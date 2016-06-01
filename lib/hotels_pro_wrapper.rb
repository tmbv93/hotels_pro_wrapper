require 'hotels_pro_wrapper/version'

module HotelsProWrapper
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield configuration
  end

  def self.live?
    HotelsProWrapper.configuration.environment == 'live'
  end

  def self.test?
    HotelsProWrapper.configuration.environment == 'test'
  end

  class Configuration
    attr_accessor :environment
    attr_accessor :username
    attr_accessor :password
    attr_accessor :currency
    attr_accessor :client_nation
    attr_accessor :destination_id
  end
end