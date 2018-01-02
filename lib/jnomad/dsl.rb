require 'jnomad/DSL/base'
require 'jnomad/DSL/job'
require 'jnomad/DSL/constraint'
require 'jnomad/DSL/task_group'
require 'jnomad/DSL/task'
require 'jnomad/DSL/log_config'
require 'jnomad/DSL/restart_policy'
require 'jnomad/DSL/resources'
require 'jnomad/DSL/artifact'
require 'jnomad/DSL/network'
require 'jnomad/DSL/periodic'
require 'jnomad/DSL/services'
require 'jnomad/DSL/checks'
require 'jnomad/DSL/templates'
require 'jnomad/DSL/update'

module Jnomad
  module DSL
    def job(&block)
      Jnomad::DSL::Job.new &block
    end
  end
end

include Jnomad::DSL
