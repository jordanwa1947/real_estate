require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test

  def test_that_it_exists
    room = Room.new(:bedroom, 10, 13)
    assert_instance_of Room, room
  end

  def test_that_it_has_attributes
    room = Room.new(:bedroom, 10, 13)

    assert_equal :bedroom, room.category
    assert_equal 10, room.length
    assert_equal 13, room.width
  end

  def test_that_it_can_calculate_the_area_of_the_area_of_the_room
    room = Room.new(:bedroom, 10, 13)

    expected = 130
    actual = room.area

    assert_equal expected, actual
  end
end
