class JSONRequest
  def self.send_request
    return build_request
  end

  private

  def self.build_request
    'http://api.hotelspro.com/4.1_test/hotel/b2bHotelJSON.php?method=getAvailableHotel&apiKey=eGFMWDBjYmVqcnFPNFpQMHBsVytlaUhGNzR6dkFBcU1xRXl3WkcrV0hLdTlLSzVZT3NyYXFDZlc5a0xOQWtoWg==&destinationId=LD6J&checkIn=2011-04-20&checkOut=2011-04-24&currency=EUR&clientNationality=UK&onRequest=false&rooms[0][0][paxType]=Adult&rooms[0][1][paxType]=Adult&rooms[0][2][paxType]=Child&rooms[0][2][age]=6&rooms[1][0][paxType]=Adult&rooms[1][1][paxType]=Adult&rooms[1][2][paxType]=Child&rooms[1][2][age]=8&filters[0][filterType]=hotelStar&filters[0][filterValue]=3&filters[1][filterType]=resultLimit&filters[1][filterValue]=10'
  end
end