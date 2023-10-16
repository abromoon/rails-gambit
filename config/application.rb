require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsGambit
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    Slim::Engine.set_options(
      attr_list_delims: { '(' => ')', '[' => ']' },
      code_attr_delims: { '(' => ')', '[' => ']' },
      format:           :html
    )

    config.generators do |g|
      g.test_framework :rspec,
                       fixtures:         true,
                       view_specs:       false,
                       helper_specs:     false,
                       routing_specs:    false,
                       controller_specs: true,
                       request_specs:    true
      g.fixture_replacement :factory_bot, dir: 'spec/factories'

      g.javascripts = false
      g.helper = false
      g.stylesheets false
    end

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    
    config.time_zone = 'Europe/Moscow'
    config.i18n.default_locale = :ru
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.i18n.fallbacks = true
    
    config.i18n.fallbacks = [:en]
    
  end
end

