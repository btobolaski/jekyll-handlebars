# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jekyll-handlebars/version"

Gem::Specification.new do |s|
  s.name              = "jekyll-handlebars"
  s.version           = Jekyll::Handlebars::VERSION
  s.platform          = Gem::Platform::RUBY
  s.authors           = ["Brendan Tobolaski"]
  s.email             = ["brendan@tobolaski.com"]
  s.homepage          = "https://github.com/btobolaski/jekyll-handlebars"
  s.summary           = %q{Makes working with Handlebars templates easier for Jekyll}
  s.description       = %q{Easily compile Handlebars template for use with Jekyll}
  s.license           = 'MIT'

  s.rubyforge_project = "jekyll-handlebars"

  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables       = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths     = ["lib"]

  s.add_runtime_dependency('jekyll', [">= 1.0.0"])
end
