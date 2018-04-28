module Jnomad
  module DSL
    class Resources < Base
      def initialize
        @c_p_u = nil
        @iops = nil
        @memory_m_b = nil
        @disk_m_b = nil
        @networks = []
        @m_bits = nil
      end

      def network(&block)
        n = Network.new

        n.instance_eval &block

        @networks << n
      end

      def cpu(cpu)
        @c_p_u = cpu
      end

      def iops(iops)
        @iops = iops
      end

      def memory(memory)
        @memory_m_b = memory
      end

      def disk(disk)
        @disk_m_b = disk
      end
    end
  end
end
