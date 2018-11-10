module API
  module V1
    class User < Grape::API
      
      resource :users do

        # desc 'return users'
        get do
          ::User.all
        end

        route_param :user_id do
          helpers do
            def permission_check!
              return if current_user.id == params[:user_id].to_i
              h = {'Access-Control-Allow-Origin' => "*", 
                'Access-Control-Request-Method' => %w{GET POST OPTIONS}.join(",")}
              error!('Permission denied.', 401, h)
            end
          end

          before do
            permission_check!
          end

          get do
            ::User.find(params[:user_id])
          end
          
          resource :books do

            get do
              ::User.find(params[:user_id]).books
            end
    
          end
        end

      end

    end
  end
end