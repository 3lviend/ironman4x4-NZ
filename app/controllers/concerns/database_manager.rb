module DatabaseManager

  #
  # Establich connect to database for selected subdomain
  #
  # @params subdomain [String]
  #
  def connect(subdomain)
    db_name = Refinery::Ironman::Subdomain
                .find_by_company_name(
                  subdomain
                ).try(:db_name)

    unless db_name.present?
      default_db_settings = YAML.load_file(
        File.join(Rails.root, 'config', 'database.yml')
      )
      db_name = default_db_settings[Rails.env]['database']
    end
    
    conn_config = ActiveRecord::Base.connection_config
    conn_config[:database] = db_name
    ActiveRecord::Base.establish_connection(conn_config)
  end

end