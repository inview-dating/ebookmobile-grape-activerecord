require "rambo/rake/task"
require "rspec/core/rake_task"
require "grape/activerecord/rake"

Rambo::Rake::Task.new
RSpec::Core::RakeTask.new

namespace :db do
  task :environment do
    require_relative "ebookmobile"
  end
end

task :default => [ :rambo, :spec ]