require 'minitest/autorun'
require_relative 'hex'

class RobotTurningTest < MiniTest::Unit::TestCase

  def test_convert_method
      hex = Hexadecimal.new('7DE')
      assert_equal 2014, hex.convert
  end
end