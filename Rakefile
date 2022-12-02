# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

require 'rubocop/rake_task'

RuboCop::RakeTask.new

require 'rake/extensiontask'

desc 'Compile the native C extensions for Salieri'
task build: :compile

Rake::ExtensionTask.new('salieri') do |ext|
  ext.lib_dir = 'lib/salieri'
end

task default: %i[clobber compile spec rubocop]
