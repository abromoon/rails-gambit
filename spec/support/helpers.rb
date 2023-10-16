RSpec.configure do |config|
config.define_derived_metadata(file_path: Regexp.new('/features')) do |metadata|
    metadata[:capybara] ||= true
    metadata[:js] ||= true
  end
  
  
  config.include(Shoulda::Matchers::ActiveModel, type: :model)
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)
  
  config.include Devise::Test::ControllerHelpers, type: :controller
  
  config.include RequestSpecHelper, type: :request
  config.include Warden::Test::Helpers, type: :request
  config.include Rails.application.routes.url_helpers, type: :request
  
  
  config.include RspecHelpers::CacheHelper
  
  
  
  
end

