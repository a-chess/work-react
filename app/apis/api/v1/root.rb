module API
  module V1
    class Root < Grape::API
      version 'v1', using: :path

      helpers API::V1::Helpers::AuthenticateHelper

      before do
        authenticate_user!
      end

      mount API::V1::UsersApi
      mount API::V1::BooksApi
    end
  end
end
