Rails.application.routes.draw do
  get 'home/index'
  get 'home/show'

  mount API::Root => '/'
  mount GrapeSwaggerRails::Engine => '/docs'
end
