class InvalidConfigurationError < StandardError
  def initialize(parameter, invalidValue, validValue=false)
    super "#{parameter} cannot be set to #{invalidValue}.#{" Should be set to #{validValue}" if validValue}"
  end
end
