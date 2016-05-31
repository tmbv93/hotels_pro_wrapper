require 'spec_helper'

describe HotelsProWrapper do
  it 'has a version number' do
    expect(HotelsProWrapper::VERSION).not_to be nil
  end

  it 'can be configured' do
    HotelsProWrapper.configure do |config|
      config.environment = 'live'
    end

    expect(HotelsProWrapper.configuration.environment).to eq('live')
  end
end
