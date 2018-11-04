module API
  class Root < Grape::API
    prefix 'api'
    format :json

    
    mount API::V1::Root
    # add_swagger_documentation
  end
end