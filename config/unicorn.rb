# config/unicorn.rb
listen "127.0.0.1:8080"
user "rails"
working_directory "/home/rails/current"
timeout 1440
pid "/home/rails/shared/tmp/pids/unicorn.pid"
stderr_path "/home/rails/shared/log/unicorn/unicorn.log"
stdout_path "/home/rails/shared/log/unicorn/unicorn.log"

worker_processes Integer(ENV["WEB_CONCURRENCY"] || 4)
# timeout 30
preload_app true

before_fork do |server, worker|

  Signal.trap 'TERM' do
    puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
    Process.kill 'QUIT', Process.pid
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|

  Signal.trap 'TERM' do
    puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to sent QUIT'
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection
end
