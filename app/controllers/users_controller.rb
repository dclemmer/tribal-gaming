class UsersController < ApplicationController
  before_filter :authenticate_user!
  layout 'nosidebar'
  active_scaffold :user do |conf|
    config.actions = [:list, :create, :update]
    list.columns.exclude :encrypted_password, :authentication_token, :confirmation_sent_at, :confirmation_token,
    :confirmed_at, :remember_created_at, :unconfirmed_email, :reset_password_sent_at, :reset_password_token
  end
end 
