module API
  module V1
    class User < Grape::API
      
      resource :users do
        desc 'return users'
        get do
          ::User.all
        end
      end

    end
  end
end