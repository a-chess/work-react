class ApidocsController < ApplicationController
  extend ActiveSupport::Concern
  include Swagger::Blocks

  swagger_root do
    key :swagger, '2.0'
    extend Swagger::V1::Info
    extend Swagger::V1::Tag
    key :host, 'localhost:3000'
    key :basePath, '/api/v1'
    key :consumes, ['application/json']
    key :produces, ['application/json']
    key :schemes, ['http']
  end

  SWAGGERED_CLASSES = [
    Swagger::V1::Paths::UsersApi,
    Swagger::V1::Definitions::UserSchema,
    Swagger::V1::Definitions::ErrorSchema,
    self
  ].freeze

  def index
    render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
  end
end
