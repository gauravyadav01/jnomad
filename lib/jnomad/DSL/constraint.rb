module Jnomad
  module DSL
    class Constraint < Base
      def initialize
        @l_target = nil
        @r_target = nil
        @operand = nil
      end

      def attribute(attribute)
        @l_target = attribute
      end

      def value(value)
        @r_target = value
      end

      def operand(operator)
        @operand = operator
      end
    end
  end
end
