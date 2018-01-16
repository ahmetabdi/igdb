
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'igdb/version'

Gem::Specification.new do |spec|
  spec.name          = 'igdb'
  spec.version       = Igdb::VERSION
  spec.authors       = ['Ahmet Abdi']
  spec.email         = ['ahmetabdi@gmail.com']

  spec.summary       = 'A Ruby wrapper for the Internet Game Database API.'
  spec.description   = ''
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = Dir['README.md', 'igdb.gemspec', 'lib/**/*']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 1.0.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.7.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'vcr', '~> 4.0.0'
  spec.add_development_dependency 'webmock', '~> 3.2.1'

  spec.add_runtime_dependency 'multi_json'
  spec.add_runtime_dependency 'representable', '~> 3.0.4'
  spec.add_runtime_dependency 'rest-client'
end
