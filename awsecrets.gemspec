# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'awsecrets/version'

Gem::Specification.new do |spec|
  spec.name          = 'awsecrets'
  spec.version       = Awsecrets::VERSION
  spec.authors       = ['k1LoW']
  spec.email         = ['k1lowxb@gmail.com']

  spec.summary       = 'AWS credentials loader'
  spec.description   = 'AWS credentials loader'
  spec.homepage      = 'https://github.com/k1LoW/awsecrets'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'aws-sdk', '~> 2.1'
  spec.add_runtime_dependency 'aws_config'
  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'octorelease'
  spec.add_development_dependency 'pry'
end
