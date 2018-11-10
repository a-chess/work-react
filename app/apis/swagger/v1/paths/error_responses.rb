module Swagger::V1::Paths::ErrorResponses
  module NotFoundError
    def self.extended(base)
      base.response 404 do
        key :description, 'Resource not found'
        schema do
          key :'$ref', :ErrorOutput # 別途定義したエラーを参照
        end
      end
    end
  end

  # ...
end
