# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "artisan"
  gem.homepage = "http://github.com/8thlight/artisan_gem"
  gem.license = "MIT"
  gem.summary = %Q{Artisan API wrapper}
  gem.description = %Q{Make calls to the Artisan API.}
  gem.email = "patrick@8thlight.com"
  gem.authors = ["patrickgombert"]
  gem.add_dependency "httparty", "~> 0.7.8"
  gem.add_development_dependency "thoughtbot-shoulda", ">=0"
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:test) do |test|
  test.pattern = 'spec/**/*_spec.rb'
  test.verbose = true
end

task :default => :test

require 'rcov/rcovtask'
Rcov::RcovTask.new do |cov|
  cov.libs << 'rspec'
  cov.pattern = 'spec/**/*_spec.rb'
  cov.verbose = true
  cov.rcov_opts << '--exclude "gems/*"'
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "artisan #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
