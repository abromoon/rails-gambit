module RspecHelpers
  module CacheHelper

    def with_no_cache
      old1 = ActionController::Base.perform_caching
      old2 = Rails.configuration.cache_store
      old3 = Rails.cache

      ActionController::Base.perform_caching = false
      Rails.configuration.cache_store = :null_store
      Rails.cache = ActiveSupport::Cache::NullStore.new
      yield
    ensure
      ActionController::Base.perform_caching = old1
      Rails.configuration.cache_store = old2
      Rails.cache = old3
    end

  end
end

