module API
  module V1
    class Book < Grape::API
      
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