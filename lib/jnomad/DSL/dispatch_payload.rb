module Jnomad
  module DSL
    class DisplayPayload < Base
      def initialize
        @file = nil
      end

      def file(file)
        @file = file
      end
    end
  end
end
