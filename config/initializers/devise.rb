Devise.setup do |config|
  
  config.mailer_sender = 'Luis Silva<skillmentoracademy@gmail.com>'
  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 11
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete

  require 'omniauth-google-oauth2'
  config.omniauth :google_oauth2, '642216214364-e2cclf1q5d1jc8mstmb6seeao71bpq05.apps.googleusercontent.com', 'EtK-_FZrm8h8b6_aPChwQv9m', {access_type: "offline", approval_prompt: ""}

  require 'omniauth-facebook'
  config.omniauth :facebook, '1914486592107761', 'e50986fb9a6bf68e0baa6ffcaabf4512'

  require 'omniauth-github'
  config.omniauth :github, 'e51e0352d47fe3a040a9', 'c638d68eebefc50900790a6a6a02f80764f6291a', scope: "user:email"

end
