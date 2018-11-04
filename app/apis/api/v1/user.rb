module API
  module V1
    class User < Grape::API
      
      resource :users do
        before do
          # authenticate_user！
        end

        # desc 'return users'
        get do
          ::User.all
        end

        #ID単一取得
        # desc "return a user"
        params do
          requires :id, type: Integer
        end
        
        get ':id' do
          user = ::User.find(params[:id])
        end

      end

    end
  end
end