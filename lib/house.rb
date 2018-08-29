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

  def add_rooms(room)
    @rooms << room
  end
end
