require 'hotels_pro_wrapper/version'
require 'rubygems'
require 'bundler/setup'
require 'hotels_pro_wrapper/search_request'
require 'hotels_pro_wrapper/search_response'
require 'hotels_pro_wrapper/errors/configuration_error'
require 'hotels_pro_wrapper/models/hotel'
require 'hotels_pro_wrapper/models/hotel_product'
require 'hotels_pro_wrapper/models/room'
require 'hotels_pro_wrapper/models/pax'

module HotelsProWrapper
  @@test_api_base = 'https://api-test.hotelspro.com/api/v2'
  @@live_api_base = 'https://api2.hotelspro.com/api/v2'

  class << self
    attr_accessor :configuration
  end

  def self.auth
    {username: configuration.username, password: configuration.password}
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield configuration
  end

  def self.live?
    configuration.environment == 'live'
  end

  def self.test?
    configuration.environment == 'test'
  end

  def self.api_base
    if live?
      @@live_api_base
    elsif test?
      @@test_api_base
    else
      raise ConfigurationError.invalid_environment
    end
  end

  class Configuration
    attr_accessor :environment
    attr_accessor :username
    attr_accessor :password
    attr_accessor :currency
    attr_accessor :client_nationality
    attr_accessor :destination_code
  end
end
