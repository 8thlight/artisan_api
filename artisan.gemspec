# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "artisan"
  s.version = "0.5.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["patrickgombert"]
  s.date = "2013-09-30"
  s.description = "Make calls to the Artisan API."
  s.email = "patrick@8thlight.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rvmrc",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "artisan.gemspec",
    "lib/artisan.rb",
    "lib/artisan/base.rb",
    "lib/artisan/iteration.rb",
    "lib/artisan/iteration_total_billed_points_by_craftsman.rb",
    "lib/artisan/project.rb",
    "lib/artisan/query.rb",
    "lib/artisan/signoff_pdf.rb",
    "lib/artisan/story.rb",
    "spec/artisan/artisan_spec.rb",
    "spec/artisan/base_spec.rb",
    "spec/artisan/iteration_spec.rb",
    "spec/artisan/iteration_total_billed_points_by_craftsman_spec.rb",
    "spec/artisan/project_spec.rb",
    "spec/artisan/query_spec.rb",
    "spec/artisan/signoff_pdf_spec.rb",
    "spec/artisan/story_spec.rb",
    "spec/artisan/validation_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/8thlight/artisan_gem"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Artisan API wrapper"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, ["~> 0.8.3"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_development_dependency(%q<cucumber>, ["~> 1.0.2"])
    else
      s.add_dependency(%q<httparty>, ["~> 0.8.3"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_dependency(%q<cucumber>, ["~> 1.0.2"])
    end
  else
    s.add_dependency(%q<httparty>, ["~> 0.8.3"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.6.0"])
    s.add_dependency(%q<cucumber>, ["~> 1.0.2"])
  end
end

