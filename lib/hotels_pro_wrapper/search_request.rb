require 'httparty'

module HotelsProWrapper
  class SearchRequest
    include HTTParty

    def initialize(search_args = {})
      self.class.base_uri HotelsProWrapper.api_base
      self.class.basic_auth(HotelsProWrapper.configuration.username, HotelsProWrapper.configuration.password)
      @options = {query: {
          currency: HotelsProWrapper.configuration.currency,
          pax: search_args[:pax],
          checkin: search_args[:checkin],
          checkout: search_args[:checkout],
          destination_code: HotelsProWrapper.configuration.destination_code,
          client_nationality: 'NO'
        }}

      @options[:query][:hotel_code] = search_args[:hotel_code] if search_args.has_key? :hotel_code
      @options[:query][:max_product] = search_args[:max_product] if search_args.has_key? :max_product
      @options
    end

    def response
      SearchResponse.new self.class.get('/search/', @options).body
    end
  end
end