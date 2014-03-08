require_relative 'shapes_helper.rb'

class RightTriangle
  attr_reader :leg1, :leg2
  def initialize(leg1,leg2)
    raise("legs must be postive numbers") if leg1 <= 0 || leg2 <= 0
    @leg1 = leg1
    @leg2 = leg2
  end

  def get_hypotenus
     Math.sqrt((@leg1 ** 2)+ (@leg2 ** 2))
  end

  def perimeter
    @leg2 + @leg1 + get_hypotenus
  end

  def area
    @leg1 * (@leg2/2)
  end

end
