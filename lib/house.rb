require './lib/room'

class House
  attr_reader :address, :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    @price.delete(@price[0]).to_i
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    @rooms.find_all do |rooms|
      room.category == category
    end
  end

  def area
    area = 0
    house.rooms.each do |room|
      area += room.area
    end
    area
  end
end
