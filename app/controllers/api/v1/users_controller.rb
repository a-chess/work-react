class Api::V1::UsersController < ApplicationController
# class UsersController < ApplicationController
  include Swagger::Blocks
  # include Swagger::UsersApi

  swagger_path '/users/{id}' do
    operation :get do
      key :summary, 'Find User by ID'
      key :description, 'Returns a user'
      key :operationId, 'findUserById'
      key :tags, [
        'user'
      ]
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of user to fetch'
        key :required, true
        key :type, :integer
        key :format, :int64
      end
      response 200 do
        key :description, 'user response'
        schema do
          key :'$ref', :Pet
        end
      end
      # response :default do
      #   key :description, 'unexpected error'
      #   schema do
      #     key :'$ref', :ErrorModel
      #   end
      # end
    end
  end

  def show
    render json: User.find(params[:id])
  end
  
end
