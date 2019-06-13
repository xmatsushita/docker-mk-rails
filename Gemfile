source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '~> 6.0.0.rc1'
gem 'puma'
gem 'bootsnap', require: false
gem 'mysql2'
gem 'whenever'
gem 'bugsnag'

group :development, :test do
  gem 'rspec-rails'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'factory_bot'
  gem 'factory_bot_rails'
  gem 'simplecov', require: false
end

group :development do
  gem 'byebug', platforms: :mri
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'rubocop-performance'
  gem 'brakeman'
  gem 'bundler-audit'
  gem 'rack-mini-profiler'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end
