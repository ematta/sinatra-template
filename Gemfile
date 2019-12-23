# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.6.5'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

group :default do
  gem 'coffee-script'
  gem 'puma'
  gem 'rack-protection'
  gem 'rake'
  gem 'sequel'
  gem 'sinatra'
  gem 'sinatra-contrib'
  gem 'slim'
  gem 'slim_lint'
  gem 'sysrandom'
  gem 'therubyracer'
end

group :test, :development do
  gem 'pry'
  gem 'pry-remote'
  gem 'rcodetools'
  gem 'rubocop'
  gem 'rufo'
  gem 'shotgun'
  gem 'sqlite3'
  gem 'yard'
end

group :production, :staging do
end
