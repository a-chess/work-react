Rails.application.routes.draw do
  root 'home#show'
  get 'home/index'
  get 'home/show'
  
  resources :apidocs, only: [:index]

  devise_for :users
  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end

  mount API::Root => '/'
end
