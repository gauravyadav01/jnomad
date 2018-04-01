module Jnomad
  module DSL
    class CheckRestart < Base
      def initialize
        @limit = nil
        @grace = nil
        @ignore_warnings = nil
      end

      def limit(limit)
        @limit = limit
      end

      def grace(grace)
        @grace = grace
      end

      def ignore_warnings(ignore_warnings)
        @ignore_warnings = ignore_warnings
      end

    end
  end
end
