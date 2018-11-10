class Swagger::UserSchema
  extend ActiveSupport::Concern
  include Swagger::Blocks

  swagger_schema :User do
    key :required, [:name, :email]
    property :name do
      key :type, :string
    end
    property :email do
      key :type, :string
    end
  end
  
end