if Rails.env.production?
  Gibbon::API.throws_exceptions = false
  Gibbon::API.timeout = 15
end

Gibbon::API.api_key = ENV['MAILCHIMP_KEY']
