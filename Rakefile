require 'rspec/core/rake_task'
require 'rake'
require 'capybara-jasmine'
require 'capybara-webkit'

desc "Run all specs"
task :all => [:unit, :jasmine, :integration, :smoke]

desc "Run specs"
RSpec::Core::RakeTask.new(:unit)

desc "Run integration specs"
RSpec::Core::RakeTask.new(:integration) do |t|
  t.pattern = "./integration_spec/*_spec.rb"
end

desc "Run smoke specs"
RSpec::Core::RakeTask.new(:smoke) do |t|
  t.pattern = "./smoke_spec/*_spec.rb"
end

Capybara::Jasmine::TestTask.new :jasmine do |t|
  Capybara.javascript_driver = :webkit
  t.lib_files = ['public/js/jquery-1.7.2.js', 'public/js/underscore.js']
  t.spec_files = ['public/js/layout_spec.js']
end
