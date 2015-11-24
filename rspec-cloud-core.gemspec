lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/cloud/core/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec-cloud-core'
  spec.version       = RSpec::Cloud::Core::VERSION
  spec.authors       = ['Tarak Blah']
  spec.email         = ['halbkarat@gmail.com']

  spec.summary       = 'rspec-cloud-core provides rspec matchers and rspec-cloud classes.'
  spec.homepage      = 'https://github.com/rspec-cloud/rspec-cloud-core'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'fog'
  spec.add_dependency 'rspec'
  spec.add_dependency 'rspec-expectations'
  spec.add_dependency 'rspec-its'
  spec.add_dependency 'rspec-collection_matchers'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end
