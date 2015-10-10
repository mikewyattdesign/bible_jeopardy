source 'https://rubygems.org'
ruby '2.2.3'

gem 'rails', '4.2.4'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use bootstrap for styling
gem 'bootstrap-sass', '~> 3.2.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

gem 'bourbon'
gem 'roo'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby




group :development do
    gem "quiet_assets", ">= 1.0.1"
    gem "better_errors", ">= 0.3.2"
    gem "binding_of_caller", ">= 0.6.8"
end

group :development, :test do
    gem 'rspec-rails'
    gem 'factory_girl_rails'
    gem 'sqlite3'

    # Use Capybara for functional testing
    gem 'capybara', '2.2.1'

    # Use Sauce Labs for automated cross-browser/cross-OS testing
    gem 'sauce', '~> 3.1.1'
    gem 'sauce-connect'
    gem 'parallel_tests'
end

group :test do
    # Use faker for fake data generation
    gem 'faker', '~> 1.1.2'


    # Use database cleaner to (predictably) clean the db after tests
    gem 'database_cleaner', '~> 1.0.1'

    # Use launchy to view web results of integration tests
    gem 'launchy', '~> 2.3.0'

    # Make selenium test driver available
    gem 'selenium-webdriver', '~> 2.39.0'
    gem "cucumber-rails", ">= 1.3.0", require: false
    gem "email_spec", ">= 1.4.0"

    # Use Code Climate to report on test coverage and code quality
    gem "codeclimate-test-reporter", require: nil
end

gem 'mandrill-api'
gem "devise"
gem "figaro", ">= 0.5.3"
gem 'jquery-rails'
gem 'turbolinks'

group :doc do
    gem 'sdoc', require: false
end


group :production do
    gem 'rails_12factor'
    gem "pg"
    gem 'newrelic_rpm'
    # Use puma as the app server
    gem 'puma'
end
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'


# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
    