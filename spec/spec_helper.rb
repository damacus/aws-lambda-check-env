# frozen_string_literal: true

require 'aws-lambda-check-env'
require 'rspec'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end
