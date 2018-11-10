class Swagger::V1::Paths::UsersApi
  extend ActiveSupport::Concern
  include Swagger::Blocks

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
          key :'$ref', :User
        end
      end
      response :default do
        key :description, 'unexpected error'
        schema do
          key :'$ref', :ErrorOutput
        end
      end
      extend Swagger::V1::Paths::ErrorResponses::NotFoundError
    end
  end
end
