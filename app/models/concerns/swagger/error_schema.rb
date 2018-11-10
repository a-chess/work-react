class Swagger::ErrorSchema
  extend ActiveSupport::Concern
  include Swagger::Blocks

  swagger_schema :ErrorOutput do
    key :required, [:errors]
    property :errors do
      key :type, :array
      items do
        key :type, :string
      end
    end
  end
end