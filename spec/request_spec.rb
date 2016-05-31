require 'rspec'
require 'hotels_pro_wrapper/json_request'

describe 'request' do

  it 'builds JSON request' do
    expect(JSONRequest::send_request).to eq('something')
  end
end