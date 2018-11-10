class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  # skip_before_action :protect_from_forgery
  protect_from_forgery with: :null_session

  # before_action :authenticate_user!
end
