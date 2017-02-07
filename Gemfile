source 'https://rubygems.org'


gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
#gem 'sqlite3' removed this for the production
# And added this for the production
group :development, :test do
  gem 'sqlite3'
end

# Add this for the production
group :production do
  gem 'pg'
end

## Pg 


gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

# Equivalente de bootstrap para fazer as formatar o design da pagina:
gem 'materialize-sass'
# Gestao de autenticaçao dos utilizadores:
gem 'devise', '~> 4.2'
#Usado para mostrar as mensagens de erro de forma dinamica:
gem 'toastr-rails', '~> 1.0', '>= 1.0.3'
# Utilizado para o envio de emais transacionais
gem 'sendgrid-ruby'

# Gem para permitir o acesso e autenticaçao com as contas de redes sociais:
gem 'omniauth', '~> 1.3', '>= 1.3.1'
gem 'omniauth-google-oauth2', '~> 0.4.1'
gem 'omniauth-facebook', '~> 4.0'
gem 'omniauth-github', '~> 1.1', '>= 1.1.2'
gem 'active_skin', '~> 0.0.12'

gem 'paperclip', '~> 5.1'

gem 'redcarpet', '~> 3.4'
gem 'coderay', '~> 1.1', '>= 1.1.1'

gem 'friendly_id', '~> 5.2'



gem 'inherited_resources', github: 'activeadmin/inherited_resources'
gem 'activeadmin', github: 'activeadmin'

gem 'active_admin-sortable_tree', '~> 0.2.1'

gem 'stripe'

#gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.1'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
