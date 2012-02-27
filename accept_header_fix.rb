module Middleware
  class AcceptHeaderFix
    def initialize(app)
      @app = app
    end

    def call(env)
      if env['HTTP_ACCEPT'] && env['HTTP_ACCEPT'] !~ /,/
        env['HTTP_ACCEPT'] = env['HTTP_ACCEPT'].split(/\s*;/).first
      end

      @app.call(env)
    end
  end
end
