module Jnomad
  module DSL
    class Resources < Base
      def initialize
        @c_p_u = nil
        @disk_m_b = nil
        @iops = nil
        @memory_m_b = nil
        @networks = []
      end

      def network(&block)
        n = Network.new

        n.instance_eval &block

        @networks << n
      end

      def cpu(cpu)
        @c_p_u = cpu
      end

      def memory(memory)
        @memory_m_b = memory
      end

      def iops(iops)
        @iops = iops
      end

      def disk(disk)
        @disk_m_b = disk
      end
    end
  end
end
