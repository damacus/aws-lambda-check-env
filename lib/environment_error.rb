# frozen_string_literal: true

# Throw custom error when there is a missing environment variable
# rather than setting to nil.
# This is designed to help throw errors when we require variables
# to be set
class EnvironmentVariableNotFound < RuntimeError
  attr_reader :variable
  attr_reader :exception_type

  def initialize(var)
    @variable = var
    @exception_type = 'environment'
    message = "Required environment variable #{var} not set"
    super(message)
  end
end
