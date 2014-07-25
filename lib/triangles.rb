class Triangle
  def initialize(side1,side2,side3)
    @sides = [side1, side2, side3].sort
  end

  def is_triangle?
    @sides[0] + @sides[1] > @sides[2]
  end

  def type
    if self.is_triangle?
      return "equilateral" if @sides.uniq.length == 1
      return "isosceles" if @sides.uniq.length == 2
      return "scalene" if @sides.uniq.length == 3
    end
  end
end
