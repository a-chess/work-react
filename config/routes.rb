Rails.application.routes.draw do

  # namespace :api do
  #   namespace :v1 do
  #     get 'users/index'
  #   end
  # end
  root 'home#show'
  get 'home/index'
  get 'home/show'
  
  resources :apidocs, only: [:index]

  devise_for :users
  get 'users/:id', to: 'users#show'

  namespace :api do
    # namespace :v1 do
    #   get 'users/:id', to: 'users#show'
    # end
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end

end
