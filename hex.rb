require 'Pry'

class Hexadecimal
  attr_reader :hex, :decimal, :hex_array_of_nums

  def initialize(hex)
    @hex = hex.downcase
    @decimal = 0
    @hex_array_of_nums = []
  end

  def convert_hex_to_array_of_nums
    conversion = { '0'=>0, 'a'=>10, 'b'=>11, 'c'=>12, 'd'=>13, 'e'=>14, 'f'=>15 }

    reverse_hex = hex.chars.reverse
    reverse_hex.each do |value|
      if value.to_i == 0
        @hex_array_of_nums << conversion.fetch(value)
      else
        @hex_array_of_nums << value.to_i
      end
    end
    @hex_array_of_nums
  end

  def convert
    convert_hex_to_array_of_nums
    hex_array_of_nums.each_index do |i|
      conversion = hex_array_of_nums[i] * ( 16 ** i )
      @decimal += conversion
    end
    decimal
  end
end