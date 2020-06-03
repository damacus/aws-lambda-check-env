# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'aws-lambda-check-env'
  spec.version       = '0.0.1'
  spec.authors       = ['Dan Webb']
  spec.homepage      = 'https://github.com/damacus/aws-lambda-check-env'
  spec.email         = ['dan@webb-agile-solutions.ltd']
  spec.summary       = 'Gem to throw custom environment errors'
  spec.description   = 'Gem to throw custom environment errors rather than swallowing them.'
  spec.license       = 'Apache-2.0'
  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ['lib']
  spec.add_development_dependency 'bump', '~> 0.8'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'rubocop', '~> 0.85'
end
