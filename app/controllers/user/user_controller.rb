# frozen_string_literal: true

# application_controller.rb
class UserController < ApplicationController
  get '/:user_name' do
    title params[:user_name]
    @user = User.where(user_name: params[:user_name]).first
    erb :'user/index'
  end
end
