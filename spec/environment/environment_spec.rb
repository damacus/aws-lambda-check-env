# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Environment do
  subject { described_class.new }

  describe 'A valid set of environment variables' do
    it 'does not throw an error with a valid set of environment variables' do
      good_env = described_class.new(%w[PWD])

      expect(good_env).to be_an_instance_of(described_class)
    end

    it 'does not throw an error' do
      good_env = described_class.new(%w[PWD])

      expect { good_env }.not_to raise_error
    end
  end

  describe 'An invalid set of environment variables' do
    it 'throws the correct type of error' do
      bad_vars = %w[FOO BAR BAZ]
      expect { described_class.new(bad_vars) }.to raise_error(EnvironmentVariableNotFound)
    end
  end
end
