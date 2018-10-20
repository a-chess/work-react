require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WorkReact
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.generators do |g|
      g.assets false
      g.helper false
      g.jbuilder false

      # rspecの自動生成
      g.test_framework :rspec,
        fixture: true,
        fixture_replacement: :factory_bot,
        view_specs: false,
        routing_specs: false,
        helper_specs: false,
        controller_specs: false,
        integration_tool: false
    
      # fixtureの代わりにfactory_girlを使うよう設定
      g.fixture_replacement :factory_bot, dir: 'spec/factories'
      
    end
  end
end
