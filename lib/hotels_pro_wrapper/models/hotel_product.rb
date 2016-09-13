module HotelsProWrapper
  class HotelProduct

    attr_accessor :code
    attr_accessor :offer
    attr_accessor :pay_at_hotel
    attr_accessor :price
    attr_accessor :currency
    attr_accessor :rooms

    def initialize(product_data)
      self.code = product_data['code']
      self.offer = product_data['offer']
      self.pay_at_hotel = product_data['pay_at_hotel']
      self.price = product_data['price'].to_f
      self.currency = product_data['currency']

      self.rooms = []
      product_data['rooms'].each do |room_data|
        self.rooms.push Room.new(room_data)
      end
    end
  end
end
