# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'squinty/version'

Gem::Specification.new do |spec|
  spec.name          = "squinty"
  spec.version       = Squinty::VERSION
  spec.authors       = ["Daniel Angel-Bradford"]
  spec.email         = ["locusdelicti@gmail.com"]
  spec.summary       = %q{Raspberry Pi - Arduino interface for interacting with a Neopixel strip.}
  spec.description   = %q{Raspberry Pi - Arduino interface for interacting with a Neopixel strip.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rubyserial", "~> 0.1.2"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
