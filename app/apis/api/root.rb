module API
  class Root < Grape::API
    prefix 'api'
    format :json

    rescue_from Grape::Exceptions::Base do |e|
      error!(e.message, 400)
    end

    rescue_from ActiveRecord::RecordNotFound do |e|
      error!(e.message, 404)
    end

    mount API::V1::Root
    # add_swagger_documentation
  end
end