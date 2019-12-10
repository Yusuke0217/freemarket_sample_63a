Recaptcha.configure do |config|
  RECAPTCHA_PUBLIC_KEY = '6LfZzMYUAAAAADcwjGrz9bgGHvplolW1sQ3NAZLr'
  config.site_key = ENV['RECAPTCHA_PUBLIC_KEY']
  config.secret_key = ENV['RECAPTCHA_PRIVATE_KEY']
end