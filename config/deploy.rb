require 'mina/multistage'
require 'mina/bundler'
require 'mina/rails'
require 'mina/git'
# require 'mina/rbenv'  # for rbenv support. (http://rbenv.org)
require 'mina/rvm'    # for rvm support. (http://rvm.io)

# Basic settings:
#   domain       - The hostname to SSH to.
#   deploy_to    - Path to deploy into.
#   repository   - Git repo to clone from. (needed by mina/git)
#   branch       - Branch name to deploy. (needed by mina/git)

# Manually create these paths in shared/ (eg: shared/config/database.yml) in your server.
# They will be linked in the 'deploy:link_shared_paths' step.
set :shared_paths, ['config/database.yml', 'log', 'public/system']

# Optional settings:
#   set :port, '30000'     # SSH port number.
set :ssh_options, '-A'

set :rvm_path, '/usr/local/rvm/bin/rvm'
# set :rvm_path, '/home/rails/.rvm/bin/rvm'
set :term_mode, nil

# This task is the environment that is loaded for most commands, such as
# `mina deploy` or `mina rake`.
task :environment do
  # If you're using rbenv, use this to load the rbenv environment.
  # Be sure to commit your .rbenv-version to your repository.
  # invoke :'rbenv:load'

  # For those using RVM, use this to load an RVM version@gemset.
  invoke :'rvm:use[ruby-1.9.3-p448@default]'
  # invoke :'rvm:use[ruby-2.1.3@default]'
end

# Put any custom mkdir's in here for when `mina setup` is ran.
# For Rails apps, we'll make some of the shared paths that are shared between
# all releases.
task :setup => :environment do
  queue! %[mkdir -p "#{deploy_to}/shared/log"]
  queue! %[chmod g+rx,u+rwx "#{deploy_to}/shared/log"]
  queue! %[chown -R rails "#{deploy_to}/shared/log"]
  queue! %[chgrp -R www-data "#{deploy_to}/shared/log"]

  queue! %[mkdir -p "#{deploy_to}/shared/config"]
  queue! %[chmod g+rx,u+rwx "#{deploy_to}/shared/config"]
  queue! %[chown -R rails "#{deploy_to}/shared/config"]
  queue! %[chgrp -R www-data "#{deploy_to}/shared/config"]

  queue! %[mkdir -p "#{deploy_to}/shared/public"]
  queue! %[mkdir -p "#{deploy_to}/shared/public/system"]
  queue! %[chmod g+rx,u+rwx "#{deploy_to}/shared/public/system"]
  queue! %[chown -R rails "#{deploy_to}/shared/public/system"]
  queue! %[chgrp -R www-data "#{deploy_to}/shared/public/system"]

  queue! %[touch "#{deploy_to}/shared/config/database.yml"]
  queue! %[chown -R rails "#{deploy_to}/shared/config/database.yml"]
  queue! %[chgrp -R www-data "#{deploy_to}/shared/config/database.yml"]
  queue  %[echo "-----> Be sure to edit 'shared/config/database.yml'."]
end

desc "Deploys the current version to the server."
task :deploy => :environment do
  deploy do
    # Put things that will set up an empty directory into a fully set-up
    # instance of your project.
    invoke :'git:clone'
    invoke :'deploy:link_shared_paths'
    invoke :'bundle:install'
    invoke :'rails:db_migrate'
    invoke :'rails:assets_precompile:force'

    to :launch do
      # all the files must be owned by the rails user, who runs the web process
      queue %[chown -R rails "#{deploy_to}/current"]
      queue %[chgrp -R www-data "#{deploy_to}/current"]

      queue "service unicorn restart"
    end
  end
end

desc "Rolls back the latest release"
task :rollback => :environment do
  queue! %[echo "-----> Rolling back to previous release for instance: #{domain}"]

  # Delete existing sym link and create a new symlink pointing to the previous release
  queue %[echo -n "-----> Creating new symlink from the previous release: "]
  queue %[ls "#{deploy_to}/releases" -Art | sort | tail -n 2 | head -n 1]
  queue! %[ls -Art "#{deploy_to}/releases" | sort | tail -n 2 | head -n 1 | xargs -I active ln -nfs "#{deploy_to}/releases/active" "#{deploy_to}/current"]

  # Remove latest release folder (active release)
  queue %[echo -n "-----> Deleting active release: "]
  queue %[ls "#{deploy_to}/releases" -Art | sort | tail -n 1]
  queue! %[ls "#{deploy_to}/releases" -Art | sort | tail -n 1 | xargs -I active rm -rf "#{deploy_to}/releases/active"]

  # Setting up permissions
  queue %[chown -R rails "#{deploy_to}"]
  queue %[chgrp -R www-data "#{deploy_to}"]  
  
  queue "service unicorn restart"
end

# For help in making your deploy script, see the Mina documentation:
#
#  - http://nadarei.co/mina
#  - http://nadarei.co/mina/tasks
#  - http://nadarei.co/mina/settings
#  - http://nadarei.co/mina/helpers

