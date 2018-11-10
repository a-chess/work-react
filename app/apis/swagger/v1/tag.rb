module Swagger::V1::Tag
  include Swagger::Blocks

  def self.extended(base)
    base.tag do
      key :name, 'user'
      key :description, 'Pets operations'
      externalDocs do
        key :description, 'Find more info here'
        key :url, 'https://swagger.io'
      end
    end
  end
end
