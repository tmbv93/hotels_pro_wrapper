require 'httparty'

module HotelsProWrapper
  class MockSearchRequest < SearchRequest
    include HTTParty

    def response
      file = File.open(File.expand_path('../../data/new_york_request.json', __FILE__))
      file_string = ''
      file.each {|s| file_string << s}
      file.close
      SearchResponse.new file_string
    end
  end
end