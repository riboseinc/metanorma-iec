# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "metanorma/iec/version"

Gem::Specification.new do |spec|
  spec.name          = "metanorma-iec"
  spec.version       = Metanorma::Iec::VERSION
  spec.authors       = ["Ribose Inc."]
  spec.email         = ["open.source@ribose.com"]

  spec.summary       = "metanorma-iec lets you write IEC standards "\
    "in AsciiDoc."
  spec.description   = <<~DESCRIPTION
    metanorma-iec lets you write IEC standards in AsciiDoc syntax.

    This gem is in active development.
  DESCRIPTION

  spec.homepage      = "https://github.com/metanorma/metanorma-iec"
  spec.license       = "BSD-2-Clause"

  spec.bindir        = "bin"
  spec.require_paths = ["lib"]
  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {spec}/*`.split("\n")
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.add_dependency "ruby-jing"
  spec.add_dependency "metanorma-iso", "~> 1.7.0"

  spec.add_development_dependency "byebug"
  spec.add_development_dependency "sassc", "2.4.0"
  spec.add_development_dependency "equivalent-xml", "~> 0.6"
  spec.add_development_dependency "guard", "~> 2.14"
  spec.add_development_dependency "guard-rspec", "~> 4.7"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.6"
  spec.add_development_dependency "rubocop", "= 0.54.0"
  spec.add_development_dependency "simplecov", "~> 0.15"
  spec.add_development_dependency "timecop", "~> 0.9"
  spec.add_development_dependency "iev", "~> 0.2.0"
end
