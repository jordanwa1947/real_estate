require './lib/room'
require 'pry'

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
    @rooms.find_all do |room|
      room.category == category
    end
  end

  def area
    area = 0
    rooms.each do |room|
      area += room.area
    end
    area
  end

  def price_per_square_foot
    (price / area.to_f).round(2)
  end
end
