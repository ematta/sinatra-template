# frozen_string_literal: true

# application_controller.rb
class ApplicationController < Sinatra::Base
  helpers ApplicationHelper

  configure do
    enable :sessions, :logging, :dump_errors, :raise_errors
    set :views, File.expand_path(File.join(settings.root, '..', 'views'))
    set :public_dir, File.expand_path(
      File.join(settings.root, '..', '..', 'public')
    )
  end

  configure :development do
    register Sinatra::Reloader
  end

  not_found do
    'Not found'
  end

  error do
    'Error'
  end
end
