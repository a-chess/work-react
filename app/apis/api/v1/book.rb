require 'doorkeeper/grape/helpers'

module API
  module V1
    class Book < Grape::API

      helpers Doorkeeper::Grape::Helpers

      helpers do
        # Find the user that owns the access token
        def current_user
          User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
        end
      end
      
      before do
        doorkeeper_authorize!
      end

      resource :books do

        get do
          current_user.books
        end

        params do
          requires :id, type: Integer
        end        
        get ':id' do
          current_user.books.find(params[:id])
        end

      end

    end
  end
end