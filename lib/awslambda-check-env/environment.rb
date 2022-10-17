# frozen_string_literal: true

# Collect required environment variables and
# check they are available
class Environment
  attr_reader :environment_hash

  def initialize(env_vars)
    raise TypeError, 'environment expects an array' unless env_vars.is_a?(Array)

    env_vars.each do |e|
      self.class.send(:attr_reader, e)
      instance_variable_set("@#{e}", check_variable(e))
    end
  end

  private

  # Used to validate Environment variables
  def check_variable(env)
    env_var = ENV[env]
    raise EnvironmentVariableNotFound, env if env_var.nil?

    env_var
  end
end
