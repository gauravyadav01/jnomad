require 'rake'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

task :install do
  sh 'gem build ./jnomad.gemspec'
  sh 'gem install jnomad-*.gem --no-rdoc --no-ri'
  sh 'rm jnomad-*.gem'
end

task :default => :test
