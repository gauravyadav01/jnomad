module Jnomad
  module DSL
    class Constraint < Base
      def initialize
        @l_target = nil
        @r_target = nil
        @operand = nil
      end

      def l_target(l_target)
        @l_target = l_target
      end

      def r_target(r_target)
        @r_target = r_target
      end

      def operand(operator)
        @operand = operator
      end
    end
  end
end
