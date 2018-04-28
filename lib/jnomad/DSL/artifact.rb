module Jnomad
  module DSL
    class Artifact < Base
      def initialize
        @getter_source = nil
        @relative_dest = nil
        @getter_options = {}
        @mode = nil
      end

      def source(source)
        @getter_source = source
      end

      def destination(destination)
        @relative_dest = destination
      end

      def options(key, value)
        @getter_options[key] = value
      end

      def mode(mode)
        @mode = mode
      end
    end
  end
end
