module API
  module V1
    class Test < Grape::API
      
      resource :test do
        desc 'return index'
        get do
          { test: 'test' }
        end
      end

    end
  end
end