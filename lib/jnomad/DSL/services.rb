module Jnomad
  module DSL
    class Services < Base
      def initialize
        @id = nil
        @name = nil
        @tags = []
        @port_label = nil
        @checks = []
      end

      def id(id)
        @id = id
      end

      def name(name)
        @name = name
      end

      def tags(*tags)
        @tags = tags
      end

      def port_label(port_label)
        @port_label = port_label
      end

      def checks(&block)
        c = Checks.new

        c.instance_eval &block

        @checks << c
      end

    end
  end
end
