require_relative 'shapes_helper.rb'

class Square
    def initialize(length)
      raise("Lenght Must Be Non-Negative") if length <= 0
      @length = length
    end

    def area
      (@length ** 2).round(2)
    end

    def perimeter
      @length * 4
    end

end

