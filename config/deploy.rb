SSHKit.config.command_map[:rake] = "bundle exec rake"
# config valid only for current version of Capistrano

set :application, 'ironman4x4'
set :repo_url, 'git@github.com:sergeychernyakov/ironman4x4.git'
set :branch, "master"

set :stages, ["production", "staging"]
set :default_stage, "staging"
set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }
set :pty, false
set :deploy_via, :remote_cache
set :scm, :git
set :keep_releases, 5

set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :tests, []


# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# set :deploy_to, '/var/www/my_app'
# set :scm, :git

# set :format, :pretty
# set :log_level, :debug
# set :pty, true

# set :linked_files, %w{config/database.yml}
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :keep_releases, 5

namespace :setup do
  
  desc "Upload database.yml file."
  task :upload_yml do
    on roles(:app) do
      execute "mkdir -p #{shared_path}/config"
      upload! "config/database.yml", "#{shared_path}/config/database.yml"
      upload! "config/secrets.yml", "#{shared_path}/config/secrets.yml"
    end
  end
   
  desc "Create database and database user"
  task :create_mysql_database do
    ask :db_root_password, ''
    ask :db_name, "#{fetch(:application)}_production"
    ask :db_user, fetch(:application)
    ask :db_pass, ''

    on roles(:app) do
      execute "mysql --user=root --password=#{fetch(:db_root_password)} -e \"CREATE DATABASE IF NOT EXISTS #{fetch(:db_name)}\""
      execute "mysql --user=root --password=#{fetch(:db_root_password)} -e \"GRANT ALL PRIVILEGES ON #{fetch(:db_name)}.* TO '#{fetch(:db_user)}'@'localhost' IDENTIFIED BY '#{fetch(:db_pass)}' WITH GRANT OPTION\""
    end
  end
  
  desc "Seed the database."
  task :seed_db do
    on roles(:app) do
      within "#{current_path}" do
        with rails_env: :staging do
          execute :rake, "db:seed"
        end
      end
    end
  end
   
end

namespace :deploy do

  %w[start stop restart].each do |command|
    desc "#{command} apache server."
    task command do
      on roles(:app) do
        execute :sudo, "service apache2 #{command}"
      end
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end
  
#  namespace :sidekiq do
#    task :quiet do
#      on roles(:app) do
#        # Horrible hack to get PID without having to use terrible PID files
#        puts capture("kill -USR1 $(sudo initctl status workers | grep /running | awk '{print $NF}') || :") 
#      end
#    end
#    task :restart do
#      on roles(:app) do
#        execute :sudo, :initctl, :restart, :workers
#      end
#    end
#  end

#  after 'deploy:starting', 'sidekiq:quiet'
#  after 'deploy:reverted', 'sidekiq:restart'
#  after 'deploy:published', 'sidekiq:restart'

  after :finishing, 'deploy:cleanup'
  
end
