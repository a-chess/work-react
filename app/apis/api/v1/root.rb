# frozen_string_literal: true

module API
  module V1
    class Root < Grape::API
      version 'v1', using: :path

      helpers API::V1::Helpers::AuthenticateHelper

      before do
        authenticate_user!
      end

      mount API::V1::User
      mount API::V1::Book
    end
  end
end
