$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'hotels_pro_wrapper'
require 'hotels_pro_wrapper/mocks/mock_search_request'
require 'yaml'

def setup_configuration
  secrets = YAML.load_file 'secrets.yml'

  HotelsProWrapper.configure do |config|
    config.environment = 'test'
    config.username = secrets['username']
    config.password = secrets['password']
    config.currency = 'USD'
    config.client_nationality = 'NO'
    config.destination_code = '1e812'
  end
end