module Jnomad
  module DSL
    class Checks < Base
      def initialize
        @id = nil
        @name = nil
        @type = nil
        @command = nil
        @args = []
        @header = {}
        @method = nil
        @path - nil
        @protocol = nil
        @t_l_s_skip_verify = nil
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
     
      def args(args)
        @args = args
      end

      def header(header)
        @header = header
      end

      def method(method)
        @method = method
      end

      def path(path)
        @path = path
      end

      def protocol(protocol)
        @protocol = protocol
      end

      def t_l_s_skip_verify(t_l_s_skip_verify)
        @t_l_s_skip_verify = t_l_s_skip_verify
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
