# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'haml-rails'
gem 'jbuilder', '~> 2.5'
gem 'mysql2'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.1'
gem 'react-rails'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'

# grape関連
gem 'grape'
gem 'grape-swagger'
gem 'grape-swagger-rails'

# モデル関連
gem 'annotate'

# 認証関連
gem 'devise'
gem 'devise_token_auth'
gem 'omniauth'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
end

group :development do
  # gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'chromedriver-helper'
  gem 'committee'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  # gem 'committee-rails'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
