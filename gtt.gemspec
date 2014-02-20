# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gtt/version'

Gem::Specification.new do |spec|
  spec.name          = "gtt"
  spec.version       = Gtt::VERSION
  spec.authors       = ["Lucas Videla"]
  spec.email         = ["videla.lucas@gmail.com"]
  spec.summary       = %q{A tool that makes it easier to travel through time inside git repos}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.2.0"
end
