# frozen_string_literal: true

require 'environment'
require 'rspec'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end
