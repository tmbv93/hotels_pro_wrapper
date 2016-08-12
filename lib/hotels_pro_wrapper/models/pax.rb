module HotelsProWrapper
  class Pax
    attr_accessor :adult_quantity
    attr_accessor :children_ages

    def initialize(pax_data)
      self.adult_quantity = pax_data[1]
      self.children_ages = []
      pax_data[4].each {|age| self.children_ages.push age} if children_ages[4]
    end
  end
end
