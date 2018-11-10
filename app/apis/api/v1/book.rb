
module API
  module V1
    class Book < Grape::API
      include Devise::Controllers::Helpers
      
      resource :books do

        get do
          ::Book.all
        end

        route_param :book_id do
          get do
            ::Book.find(params[:book_id])
          end
        end
        
      end

    end
  end
end