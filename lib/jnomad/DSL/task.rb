module Jnomad
  module DSL
    class Task < Base
      def initialize
        @name = nil
        @driver = nil
        @user = nil
        @env = {}
        @meta = {}
        @artifacts = []
        @config = {}
        @constraints = []
        @resources = nil
        @kill_timeout = nil
        @log_config = nil
        @services = []
        @templates = []
      end

      def name(name)
        @name = name
      end

      def driver(driver)
        @driver = driver
      end

      def user(user)
        @user = user
      end

      def env(key, value)
        @env[key] = value
      end

      def meta(key, value)
        @meta[key] = value
      end

      def artifact(&block)
        a = Artifact.new

        a.instance_eval &block

        @artifacts << a
      end

      def config(key, value)
        @config[key] = value
      end

      def constraint(&block)
        c = Constraint.new

        c.instance_eval &block

        @constraints << c
      end

      def logs(&block)
        lc = LogConfig.new

        lc.instance_eval &block

        @log_config = lc
      end

      def resources(&block)
        r = Resources.new

        r.instance_eval &block

        @resources = r
      end

      def kill_timeout(kill_timeout)
        @kill_timeout = kill_timeout
      end

      def services(&block)
        s = Services.new

        s.instance_eval &block

        @services << s
      end

      def templates(&block)
        t = Templates.new

        t.instance_eval &block

        @templates << t
      end
    end
  end
end
