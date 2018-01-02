module Jnomad
  module DSL
    class Checks < Base
      def initialize
        @id = nil
        @name = nil
        @type = nil
        @command = nil
        @port_label = nil
        @inteval = nil
      end

      def id(id)
        @id = id
      end

      def name(name)
        @name = name
      end

      def type(type)
        @type = type
      end

      def command(command)
        @command = command
      end

      def port_label(port_label)
        @port_label = port_label
      end

      def interval(interval)
        @interval = interval
      end

      def timeout(timeout)
        @timeout = timeout
      end
    end
  end
end
