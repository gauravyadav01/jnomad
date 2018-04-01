module Jnomad
  module DSL
    class Update < Base
      def initialize
        @max_parallel = nil
        @health_check = nil
        @min_healthy_time = nil
        @healthy_deadline = nil
        @auto_revert = true
        @canary = nil
        @stagger = nil
      end

      def max_parallel(max_parallel)
        @max_parallel = max_parallel
      end

      def health_check(health_check)
        @health_check = health_check
      end

      def min_healthy_time(min_healthy_time)
         @min_healthy_time = min_healthy_time 
      end

      def healthy_deadline(healthy_deadline)
        @healthy_deadline = healthy_deadline
      end

      def canary(canary)
        @canary = canary
      end

      def stagger(stagger)
        @stagger = stagger * 1000000000
      end

    end
  end
end
