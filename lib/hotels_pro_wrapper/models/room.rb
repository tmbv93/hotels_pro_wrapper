module HotelsProWrapper
  class Room

    attr_accessor :category
    attr_accessor :description
    attr_accessor :type
    attr_accessor :pax


    def initialize(room_data)
      self.category = room_data['room_category']
      self.description = room_data['room_desription']
      self.type = room_data['room_type']
      self.pax = []
      room_data['pax'].each do |pax_data|
        self.pax.push Pax.new(pax_data)
      end
    end
  end
end
