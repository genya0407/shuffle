# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "standard/rake"

require "rake/extensiontask"

Rake::ExtensionTask.new("shuffle") do |ext|
  ext.lib_dir = "lib/shuffle"
  ext.source_pattern = "*.{rs,toml}"
end

task default: %i[compile spec standard]
