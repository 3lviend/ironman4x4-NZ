require "shellwords"
class CreateSubdomainDatabaseWorker
  include Sidekiq::Worker
  
  #
  # Implementation of #perform
  #
  # @param db_name [String] subdomain database name
  #
  def perform(db_name)
    self.create_database(db_name)
  end

  protected

  #
  # create database and fill it with data
  #
  # @param db_name [String] subdomain database name
  #
  def create_database(db_name)
    config = Rails.configuration.database_configuration[Rails.env]
    password = Shellwords.escape(config['password'])
    new_db = "mysqldump -u#{config['username']} -p#{password} -h#{config['host']} #{config['database']} --no-data > tmp/backup.sql;
              mysqldump -u#{config['username']} -p#{password} -h#{config['host']} #{config['database']} refinery_ironman_subdomains >> tmp/backup.sql;
              mysqladmin -u#{config['username']} -p#{password} create #{db_name};
              mysql -u#{config['username']} -p#{password} -h#{config['host']} #{db_name} < tmp/backup.sql"
    system new_db
  end
  
end