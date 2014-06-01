# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'time_sugar'

Gem::Specification.new do |spec|
  spec.name          = 'time_sugar'
  spec.version       = TimeSugar::VERSION
  spec.authors       = ['Patricio Mac Adden']
  spec.email         = ['patriciomacadden@gmail.com']
  spec.summary       = 'Syntactic sugar for handling time.'
  spec.description   = 'Syntactic sugar for handling time.'
  spec.homepage      = 'https://github.com/patriciomacadden/time_sugar'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'mocoso'
  spec.add_development_dependency 'oktobertest'
  spec.add_development_dependency 'rake'
end
