namespace :routes do
  task api: :environment do
    desc 'API Routes'
    API::Root.routes.each do |api|
      method = api.request_method.ljust(10)
      path = api.path
      puts "     #{method} #{path}"
    end
  end
end
