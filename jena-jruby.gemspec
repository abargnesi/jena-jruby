# -*- encoding: utf-8 -*-
$:.push File.expand_path("./lib", __FILE__)
load "lib/jena_jruby/version.rb"

Gem::Specification.new do |s|
  s.name        = "jena-jruby"
  s.version     = Jena::JENA_JRUBY_GEM_VERSION
  s.platform    = Gem::Platform.new("java")
  s.authors     = ["Ian Dickinson"]
  s.email       = ["ian@epimorphics.com"]
  s.homepage    = "https://github.com/ephemerian/jena-jruby"
  s.summary     = %q{JRuby wrapper for Apache Jena}
  s.description = %q{A simple packaging of Apache Jena for JRuby}

  s.files         = `git ls-files`.split("\n").reject { |f| f.include? '/dev/' }
  s.files.concat( Dir.glob 'javalib/*.jar' )
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
#  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib", "javalib"]

  s.extra_rdoc_files = ["README.md"]

  s.add_dependency( 'haml' )
  s.add_dependency( 'builder' )
end
