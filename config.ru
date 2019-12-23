# frozen_string_literal: true

ENV['SINATRA_ENV'] ||= 'development'
ENV['RACK_ENV'] ||= 'development'

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

DB = Sequel.connect(ENV['DATABASE_URL'])

require 'sinatra'
require 'sinatra/contrib/all'

Dir.glob('./app/helpers/**/*.rb').sort.each { |file| require file }
Dir.glob('./app/models/**/*.rb').sort.each { |file| require file }
Dir.glob('./app/controllers/**/*.rb').sort.each { |file| require file }

# map the controllers to routes
map('/u') { run UserController }
