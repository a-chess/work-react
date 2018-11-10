class Swagger::V1::Definitions::UserSchema
  include Swagger::Blocks

  swagger_schema :User do
    key :required, %i[name email]
    property :name do
      key :type, :string
    end
    property :email do
      key :type, :string
    end
  end
end
