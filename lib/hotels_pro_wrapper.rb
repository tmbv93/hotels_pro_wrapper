require "hotels_pro_wrapper/version"

module HotelsProWrapper
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield configuration
  end

  class Configuration
    attr_accessor :environment
    attr_accessor :api_key

    def initialize
      @environment = 'test'
    end
  end
end