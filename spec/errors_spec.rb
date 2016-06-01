require 'spec_helper'
require 'hotels_pro_wrapper/errors/configuration_error'

describe 'invalid configuration handler' do

  it 'returns valid valid parameters only if specified' do
    expect{raise ConfigurationError.new('environment', 'some drivel')}.
        to raise_error(ConfigurationError, 'environment cannot be set to some drivel.')

    expect{raise ConfigurationError.new('environment', 'some drivel', "either 'live' or 'test'")}.
        to raise_error(ConfigurationError, "environment cannot be set to some drivel. Should be set to either 'live' or 'test'")
  end
end
