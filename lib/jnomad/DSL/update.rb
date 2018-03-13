module Jnomad
  module DSL
    class Update < Base
      def initialize
        @max_parallel = nil
        @health_check = nil
        @min_healthy_time = nil
        @healthy_deadline = nil
        @auto_revert = true
        @canary = 1
        @stagger = nil
      end

      def max_parallel(max_parallel)
        @max_parallel = max_parallel
      end

      def stagger(stagger)
        @stagger = stagger * 1000000000
      end
 
      def canary(canary)
        @canary = canary
      end

    end
  end
end
