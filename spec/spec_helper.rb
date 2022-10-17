# frozen_string_literal: true

require 'aws_lambda_check_env'
require 'rspec'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end
