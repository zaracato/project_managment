source "https://rubygems.org"

gem "rails", "4.1.1"

# Use PostgreSQL as the database for Active Record
gem "mysql2"

# Compressor of JavaScript assets
gem "uglifier", ">= 1.3.0"

# Use CoffeeScript for .js.coffee assets and views
gem "coffee-rails", "~> 4.0.0"

# Use jQuery as the JavaScript library
gem "jquery-rails"

# User authentication
gem "devise", "3.2.4"

gem "omniauth-facebook"
gem "kaminari"
gem "ransack"
gem "dynamic_form"
gem "nested_form"
gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"

group :test, :development do
  gem "rspec-rails"
  gem "debugger"
  gem "awesome_print"
end

group :development do
  gem "chronic"
  gem "admin_view"
end

group :test do
  gem "factory_girl_rails"
  gem "cucumber-rails", :require => false
  gem "database_cleaner"
  gem "selenium-webdriver"
  gem "capybara"
  gem "shoulda"
  gem "email_spec"
end

group :production, :development do
  gem "thin"
end


gem 'capistrano',  '~> 3.1'
gem 'capistrano-rvm'
gem 'capistrano-rails', '~> 1.1'
gem 'capistrano-bundler'


