require 'spec_helper'

describe HotelsProWrapper do
  it 'has a version number' do
    expect(HotelsProWrapper::VERSION).not_to be nil
  end

  it 'can be configured' do
    setup_configuration

    expect(HotelsProWrapper.configuration.environment).to eq('test')
    expect(HotelsProWrapper.configuration.username).to be_truthy
    expect(HotelsProWrapper.configuration.password).to be_truthy
    expect(HotelsProWrapper.configuration.currency).to eq('USD')
    expect(HotelsProWrapper.configuration.client_nationality).to eq('NO')
    expect(HotelsProWrapper.configuration.destination_code).to eq('1e812')
  end
end
