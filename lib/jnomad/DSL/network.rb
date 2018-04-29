module Jnomad
  module DSL
    class Network < Base
      def initialize
        @reserved_ports = []
        @dynamic_ports = []
        @m_bits = nil
      end

      def port(label, port = 0)
        if port == 0
          @dynamic_ports << {label: label}
        else
          @reserved_ports << {label: label, value: port}
        end
      end

      def mbits(m_bits)
        @m_bits = m_bits
      end
    end
  end
end
