module Swagger::UsersApi
  extend ActiveSupport::Concern
  include Swagger::Blocks

  included do
    include Swagger::ErrorSchema

    swagger_path '/users/{id}' do
      # parameters :user_id # root で定義されたパラメータを取り込む

      operation :get do
        key :description, 'Returns the specified user'
        key :operationId, :find_user_by_id

        parameter name: :id do
          key :in, :path
          key :description, 'User ID'
          key :required, true
          key :type, :integer
          key :format, :int64 
        end
        
        response 200 do
          key :description, 'User specified by its ID'
          schema do
            key :'$ref', :User # 別途定義した User を参照
          end
        end

        # 別途定義したエラーレスポンスを取り込む
        extend Swagger::ErrorResponses::NotFoundError
      end
    end
  end
end