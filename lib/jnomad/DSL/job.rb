require 'json'

module Jnomad
  module DSL
    class Job < Base
      attr_reader :output
      def initialize(&block)
        @id = nil
        @name = nil
        @type = "service"
        @priority = 50
        @region = "global"
        @datacenters = []
        @update = {}
        @task_groups = []
        @constraints = []
        @all_at_once = false
        @meta = {}
        @periodic = nil

        instance_eval &block if block_given?

        spec = { Job: self.to_h }

        @output = JSON.pretty_generate(spec)
        return @output
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

      def priority(priority)
        @priority = priority
      end

      def region(region)
        @region = region
      end

      def datacenters(*datacenters)
        @datacenters = datacenters
      end
     
      def update(&block)
        up = Update.new
        
        up.instance_eval &block
        
        @update = up
      end

      def task_group(&block)
        tg = TaskGroup.new

        tg.instance_eval &block

        @task_groups << tg
      end

      def constraint(&block)
        c = Constraint.new

        c.instance_eval &block

        @constraints << c
      end

      def periodic
        p = Periodic.new

        p.instance_eval &block

        @periodic = p
      end

      def meta(key, value)
        @meta[key] = value
      end

      def all_at_once(all_at_once)
        @all_at_once = all_at_once
      end

    end
  end
end
