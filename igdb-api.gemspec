# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'igdb/version'

Gem::Specification.new do |spec|
  spec.name          = 'igdb_api'
  spec.version       = Igdb::VERSION
  spec.authors       = ['Leigh West']
  spec.email         = ['iamtastycake@gmail.com']

  spec.summary       = 'A Ruby wrapper for the Internet Game Database API.'
  spec.description   = ''
  spec.homepage      = 'https://github.com/tastycake/igdb_api'
  spec.license       = 'MIT'

  spec.files         = Dir['README.md', 'igdb_api.gemspec', 'lib/**/*']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3.0'
  spec.add_development_dependency 'vcr', '~> 2.9.3'
  spec.add_development_dependency 'webmock', '~> 1.21.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 1.0.0'
  spec.add_development_dependency 'pry'

  spec.add_runtime_dependency 'representable'
  spec.add_runtime_dependency 'multi_json'
  spec.add_runtime_dependency 'rest-client'
end
