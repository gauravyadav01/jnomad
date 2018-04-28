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
        @path = nil
        @protocol = nil
        @t_l_s_skip_verify = nil
        @initial_status = nil
        @port_label = nil
        @inteval = nil
        @check_restart = {}
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

      def header(key, value)
        @header[key] = value
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

      def tls_skip_verify(tls_skip_verify)
        @t_l_s_skip_verify = tls_skip_verify
      end

      def port(port)
        @port_label = port
      end

      def interval(interval)
        @interval = interval * 1000000000
      end

      def timeout(timeout)
        @timeout = timeout * 1000000000
      end
      
      def check_restart(key, value)
        @check_restart[key] = value
      end
 
    end
  end
end
