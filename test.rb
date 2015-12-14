require 'minitest/autorun'
require_relative 'hex'

class RobotTurningTest < MiniTest::Unit::TestCase
  attr_reader :hex

  def setup
    @hex = Hexadecimal.new
  end

  def test_robot_bearing
      robot.orient(direction)
      assert_equal direction, robot.bearing
    end
  end
end