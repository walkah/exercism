# Triangle class
class Triangle
  def initialize(sides)
    @sides = sides.sort
  end

  def equilateral?
    @sides.uniq.length == 1 && triangle_equality?
  end

  def isosceles?
    @sides.uniq.length < 3 && triangle_equality?
  end

  def scalene?
    @sides.uniq.length == 3 && triangle_equality?
  end

  private

  def triangle_equality?
    @sides.min > 0 && @sides[0] + @sides[1] >= @sides[2]
  end
end
