module API
  module V1
    class User < Grape::API
      
      resource :users do
        desc 'return users'
        get do
          ::User.all
        end

        #ID単一取得
        desc "return a user"
        params do
          requires :id, type: Integer
        end
        
        get ':id' do
          user = ::User.find(params[:id])
          # {
          #   id: user.id,
          #   name: user.name,
          #   age: user.age,
          #   email: user.email
          # }

        end

      end

    end
  end
end