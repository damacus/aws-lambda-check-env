# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Environment do
  describe 'A valid set of environment variables' do
    before(:all) do
      @good_env = Environment.new(%w[PWD])
    end

    it 'does not throw an error with a valid set of environment variables' do
      expect(@good_env).to be_an_instance_of(Environment)
    end

    it 'does not throw an error' do
      expect { @good_env }.not_to raise_error
    end
  end

  describe 'An invalid set of environment variables' do
    it 'throws the correct type of error' do
      bad_vars = %w[FOO BAR BAZ]
      expect { Environment.new(bad_vars) }.to raise_error(EnvironmentVariableNotFound)
    end
  end
end
