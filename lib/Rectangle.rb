require_relative 'shapes_helper.rb'

class Rectangle
  def initialize(length, width = length)
    raise("length and width must be positve numbers") if length <= 0 || width <= 0
    @length = length
    @width = width
  end

  def area
    @length * @width
  end

  def perimeter
    2* (@length + @width)
  end

end 