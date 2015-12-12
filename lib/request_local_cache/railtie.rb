module RequestLocalCache
  class Railtie < ::Rails::Railtie
    initializer 'request_local_cache.insert_middleware' do |app|
      if ActionDispatch.const_defined? :RequestId
        app.config.middleware.insert_after ActionDispatch::RequestId, RequestLocalCache::Middleware
      else
        app.config.middleware.insert_after Rack::MethodOverride, RequestLocalCache::Middleware
      end

      if ActionDispatch.const_defined?(:Reloader) && ActionDispatch::Reloader.respond_to?(:to_cleanup)
        ActionDispatch::Reloader.to_prepare do
          RequestLocalCache.clear!
        end
      end
    end
  end
end
