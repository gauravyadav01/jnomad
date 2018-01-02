# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'jnomad/version'

Gem::Specification.new do |s|
  s.name          = "jnomad"
  s.version       = Jnomad::VERSION
  s.authors       = ["Gaurav Yadav"]
  s.email         = ["gauravyadav01@gmail.com"]
  s.homepage      = "https://github.com/gauravyadav01/jnomad"
  s.summary       = "A swiss army knife gem for the Hashicorp Nomad job scheduler"
  s.description   = "A swiss army knife gem for the Hashicorp Nomad job scheduler"

  s.files         = `git ls-files app lib`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']

  s.add_development_dependency "rake", "10.4.2"

  s.add_runtime_dependency "thor", '~> 0.19'
  s.add_runtime_dependency "rest-client", '~> 1.8'
end
