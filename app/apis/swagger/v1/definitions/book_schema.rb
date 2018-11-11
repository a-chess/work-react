class Swagger::V1::Definitions::BookSchema
  include Swagger::Blocks

  swagger_schema :Book do
    key :required, %i[title author]
    property :title do
      key :type, :string
    end
    property :author do
      key :type, :string
    end
  end
end
