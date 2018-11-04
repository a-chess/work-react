Rails.application.routes.draw do
  root 'home#show'
  get 'home/index'
  get 'home/show'

  mount API::Root => '/'
end
