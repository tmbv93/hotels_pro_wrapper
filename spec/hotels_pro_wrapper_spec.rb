require 'spec_helper'

describe HotelsProWrapper do
  it 'has a version number' do
    expect(HotelsProWrapper::VERSION).not_to be nil
  end

  it 'can be configured' do
    HotelsProWrapper.configure do |config|
      config.environment = 'live'
      config.username = 'AmazingUsername'
      config.password = 'WondrousSecret'
      config.currency = 'USD'
      config.client_nation = 'Norway'
      config.destinationd_id = 'NPIK'
    end

    expect(HotelsProWrapper.configuration.environment).to eq('live')
    expect(HotelsProWrapper.configuration.username).to eq('AmazingUsername')
    expect(HotelsProWrapper.configuration.password).to eq('WondrousSecret')
    expect(HotelsProWrapper.configuration.currency).to eq('USD')
    expect(HotelsProWrapper.configuration.client_nation).to eq('Norway')
    expect(HotelsProWrapper.configuration.destination_id).to eq('NPIK')
  end
end
