module RequestLocalCache
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      RequestLocalCache.clear!
      @app.call(env)
    end
  end
end
