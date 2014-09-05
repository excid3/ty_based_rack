# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ty_based_rack/version'

Gem::Specification.new do |spec|
  spec.name          = "ty_based_rack"
  spec.version       = TyBasedRack::VERSION
  spec.authors       = ["kai3x5"]
  spec.email         = ["kai3x5@gmail.com"]
  spec.summary       = %q{Rack-based web framework}
  spec.description   = %q{Something something stupid descriptions}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "rack"
end
