class ConfigurationError < StandardError
  def initialize(parameter, invalidValue, validValue=false)
    super "#{parameter} cannot be set to #{invalidValue}.#{" Should be set to #{validValue}" if validValue}"
  end

  def invalid_environment
    initialize('environment', HotelsProWrapper.configuration.environment, "either 'live' or 'test'")
  end
end
