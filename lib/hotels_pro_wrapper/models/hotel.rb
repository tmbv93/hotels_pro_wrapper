module HotelsProWrapper
  class Hotel

    attr_accessor :code
    attr_accessor :checkout
    attr_accessor :checkin
    attr_accessor :destination_code
    attr_accessor :products

    def initialize(hotel_data)
      self.code = hotel_data['hotel_code']
      self.checkout = hotel_data['checkout']
      self.checkin = hotel_data['checkin']
      self.destination_code = hotel_data['destination_code']

      self.products = []
      hotel_data['products'].each do |product_data|
        self.products.push HotelProduct.new(product_data)
      end
    end

    def best_offer
      products.min_by(&:price)
    end

    def lowest_price
      best_offer.price
    end
  end
end
