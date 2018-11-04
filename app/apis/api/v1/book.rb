
module API
  module V1
    class Book < Grape::API

      helpers do
        def current_user
        end
      end
      
      before do
        # doorkeeper_authorize!
      end

      resource :books do

        get do
          ::Book.all
        end

        params do
          requires :id, type: Integer
        end        
        get ':id' do
          ::Book.find(params[:id])
        end

      end

    end
  end
end