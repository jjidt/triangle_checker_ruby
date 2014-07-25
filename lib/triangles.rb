class Triangle
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [@side1, @side2, @side3].sort
  end

  def is_triangle?
    @sides[0] + @sides[1] > @sides[2]
  end

  def type
    return "equilateral" if @sides.uniq.length == 1
    return "isosceles" if @sides.uniq.length == 2
    "scalene"
  end
end
