class Triangle

  # def initialize(attributes)
  #   attributes.each do |key, value| 
  #     self.class.attr_accessor(key)
  #     self.send(("#{key}="), value)
  #   end
  # end

  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3]
    @sides.sort!
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3

  end
  
  def kind#(side_1, side_2, side_3)
    if @sides.any?{|side| side <= 0} || ((@sides[0] + @sides[1]) <= @sides[2])
    raise TriangleError
    elsif @side_1 == @side_2 && @side_1 == @side_3
      return :equilateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      return :isosceles
    elsif @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
      return :scalene
    end

  end

  class TriangleError < StandardError
    def message
      "that's not a triangle you silly goose"
    end

  end

end
