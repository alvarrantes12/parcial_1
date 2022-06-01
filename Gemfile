source "https://rubygems.org"
git_source(:github) { |repo| 'https://github.com/#{repo}.git' }

ruby "2.7.0"

gem "bootsnap", require: false
gem "bootstrap", "~> 4.1.3"
gem "font-awesome-sass", "~> 4.4.0"
gem "haml"
gem "httparty"
gem "importmap-rails"
gem "jbuilder"
gem "jquery-rails"
gem "net-http"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rack-cors"
gem "rails", "~> 7.0.3"
gem "sass-rails", "~> 5.0"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "turbolinks"
gem "uglifier", ">= 1.3.0"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails"
end

group :development do
  gem "erb2haml"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
