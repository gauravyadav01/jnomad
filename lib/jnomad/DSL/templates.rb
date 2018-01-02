module Jnomad
  module DSL
    class Templates < Base
      def initialize
        @source_path = nil
        @dest_path = nil
        @change_mode = nil
        @change_signal = nil
      end

      def source_path(source_path)
        @source_path = source_path
      end

      def dest_path(dest_path)
        @dest_path = dest_path
      end

      def change_mode(change_mode)
        @change_mode = change_mode
      end

      def change_signal(change_signal)
        @change_signal = change_signal
      end

    end
  end
end
