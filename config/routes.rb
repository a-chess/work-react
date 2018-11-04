Rails.application.routes.draw do
  # use_doorkeeper
  devise_for :users

  root 'home#show'
  get 'home/index'
  get 'home/show'

  mount API::Root => '/'
end
