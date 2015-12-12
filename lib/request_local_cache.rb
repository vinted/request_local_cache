require 'request_local_cache/version'
require 'request_local_cache/middleware'
require 'request_local_cache/railtie' if defined?(Rails::Railtie)

module RequestLocalCache
  def self.store
    Thread.current[:request_local_store] ||=
      ActiveSupport::Cache::Strategy::LocalCache::LocalStore.new
  end

  def self.clear!
    Thread.current[:request_local_store] = nil
  end
end
