module Jnomad
  module DSL
    class Migrate < Base
      def initialize
        @max_parallel = nil
        @health_check = nil
        @min_healthy_time = nil
        @healthy_deadline = nil
      end

      def max_parallel(max_parallel)
        @max_parallel = max_parallel
      end

      def health_check(health_check)
        @health_check = health_check * 1000000000
      end

      def min_healthy_time(min_healthy_time)
        @min_healthy_time = min_healthy_time
      end

      def healthy_deadline(healthy_deadline)
        @healthy_deadline = healthy_deadline
      end
    end
  end
end
