module Jnomad
  module DSL
    class EphemeralDisk < Base
      def initialize
        @migrate = nil
        @size_m_b = nil
        @sticy = nil
      end

      def migrate(migrate)
        @migrate = migrate
      end

      def size(size)
        @size_m_b = size
      end

      def sticky(sticky)
        @sticky = sticky
      end

    end
  end
end
