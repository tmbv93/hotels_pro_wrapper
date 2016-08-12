require 'httparty'
require 'json'

module HotelsProWrapper
  class SearchResponse
    include HTTParty

    attr_accessor :number_of_hotels
    attr_accessor :hotels

    def initialize(response_data)
      parsed_data = JSON.parse(response_data)
      if parsed_data.has_key? 'error_code'
        raise parsed_data.to_yaml
      end
      self.number_of_hotels = parsed_data['count']
      self.hotels = []

      if parsed_data['results']
        parsed_data['results'].each do |hotel_data|
          self.hotels.push Hotel.new(hotel_data)
        end
      end
    end
  end
end
