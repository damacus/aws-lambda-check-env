# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'aws-lambda-check-env'
  spec.version       = '0.0.8'
  spec.files         = Dir['lib/**/*']
  spec.require_paths = ['lib']
  spec.authors       = ['Dan Webb']
  spec.homepage      = 'https://github.com/damacus/aws-lambda-check-env'
  spec.email         = ['dan@webb-agile-solutions.ltd']
  spec.summary       = 'Gem to throw custom environment errors'
  spec.description   = 'Gem to throw custom environment errors rather than swallowing them.'
  spec.license       = 'Apache-2.0'
  spec.required_ruby_version = '>= 3.1.0'
  spec.add_development_dependency 'bump', '~> 0.10'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'rubocop', '~> 1'
  spec.add_development_dependency 'rubocop-rspec', '~> 2'
end
