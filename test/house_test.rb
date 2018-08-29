require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class HouseTest < Minitest::Test

  def test_that_it_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end

  def test_that_it_has_attributes
    house = House.new("$400000", "123 sugar lane")

    assert_equal [], house.rooms
    assert_equal "123 sugar lane", house.address
  end

  def test_that_house_converts_price_to_integer
    house = House.new("$400000", "123 sugar lane")

    assert_equal 400000, house.price
  end

  def test
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    house.add_room(room_1)
    house.add_room(room_2)

    expected = [room_1, room2]
    actual = house.rooms
    assert_equal expected, actual
  end
end
