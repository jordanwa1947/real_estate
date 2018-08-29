require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test

  def test_that_it_exitst
    room = Room.new
    assert_instance_of Room, room
  end

  def test_that_it_has_attributes
    assert_equal :bedroom
  end
end
