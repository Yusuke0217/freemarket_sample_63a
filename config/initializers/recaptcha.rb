Recaptcha.configure do |config|
  # ローカル用、env読み込み
  config.site_key = ENV['RECAPTCHA_SITE_KEY']
  config.secret_key = ENV['RECAPTCHA_SECRET_KEY']

  config.site_key = Rails.application.credentials[:RECAPTCHA_SITE_KEY]
  config.secret_key = Rails.application.credentials[:RECAPTCHA_SECRET_KEY]
end