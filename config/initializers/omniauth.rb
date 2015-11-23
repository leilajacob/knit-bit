OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET']
  provider :ravelry, ENV['RAVELRY_APP_ID'], ENV['RAVELRY_APP_SECRET']
end