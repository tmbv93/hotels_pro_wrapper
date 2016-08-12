require 'rspec'
require 'spec_helper'

describe 'search request' do

  before :all do
    setup_configuration
  end

  it 'builds JSON request' do
    time = Time.now
    search = HotelsProWrapper::SearchRequest.new({checkin: '2017-04-20', checkout: '2017-04-22', pax: 4 })
    response = search.response
    puts Time.now - time
    expect(search.response).to eq('something')
  end
end