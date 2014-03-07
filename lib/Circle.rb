require_relative 'shapes_helper.rb'

class Circle
  attr_reader :radius
  def initialize(radius)
    raise("non-negative numbers only please") if radius <= 0
    @radius = radius
  end

  def diameter
    @radius * 2
  end

  def circumference
    (@radius * 2 * Math::PI).round(5)
  end

  def area(words= false)
    if words
      "PI #{@radius}in^2"
    else
      (Math::PI * @radius ** 2).round(5)
    end
  end
  
end
