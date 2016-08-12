require 'httparty'

module HotelsProWrapper
  class SearchRequest
    include HTTParty

    def initialize(search_args = {})
      self.class.base_uri HotelsProWrapper.api_base
      self.class.basic_auth(HotelsProWrapper.configuration.username, HotelsProWrapper.configuration.password)
      @options = {query: {
          currency: 'USD',
          pax: search_args[:pax],
          checkin: search_args[:checkin],
          checkout: search_args[:checkout],
          destination_code: HotelsProWrapper.configuration.destination_code,
          client_nationality: 'NO',
          hotel_codes: '102165, 1021eb, 1022ce',
          max_product: 1,
          limit: 10
        }}
    end

    def response
      SearchResponse.new self.class.get('/search/', @options).body
    end
  end
end