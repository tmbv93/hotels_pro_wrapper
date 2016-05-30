require 'rspec'
require 'hotels_pro_wrapper/json_request'

describe 'request' do

  it 'builds JSON request' do
    expect(HotelsProWrapper::JSONRequest::build_Request).to eq('something')
  end

end