# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#show'
  get 'home/index'
  get 'home/show'
  mount API::Root => '/'

  devise_for :users

  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end
end
