module Jnomad
  module DSL
    class Periodic < Base
      def initialize
        @enabled = nil
        @time_zone = "UTC"
        @spec_type = nil
        @spec = nil
        @prohibit_overlap = false
      end

      def enabled(enabled)
        @enabled = enabled
      end
    
      def time_zone(time_zone)
        @time_zone = time_zone
      end

      def spec_type(spec_type)
        @spec_type = spec_type
      end

      def spec(spec)
        @spec = spec
      end

      def prohibit_overlap(prohibit_overlap)
        @prohibit_overlap = prohibit_overlap
      end
    end
  end
end
