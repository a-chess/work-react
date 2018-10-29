module API
  module V1
    class Root < Grape::API
      version 'v1', using: :path
      mount API::V1::Test
      mount API::V1::User
    end
  end
end
