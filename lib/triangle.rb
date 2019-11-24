class Triangle
  def initialize(side_1, side_2, side_3)
    @triangle_sides = []
    @triangle_sides << side_1
    @triangle_sides << side_2
    @triangle_sides << side_3
  end

  def valid?
    sum_one_two = @triangle_sides[0] + @triangle_sides[1]
    sum_one_three = @triangle_sides[0] + @triangle_sides[2]
    sum_two_three = @triangle_sides[1] + @triangle_sides[2]

    if (@triangle_sides.none? {|side| side <= 0}) &&
      (sum_one_two > @triangle_sides[2] && sum_one_three > @triangle_sides[1] && sum_two_three > @triangle_sides[0])
      return true
    else
      return false
    end
  end

  def kind
    if valid?
      if @triangle_sides.uniq.length == 1
        return :equilateral
      elsif @triangle_sides.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError

end





#   - Write a `Triangle` class that accepts three arguments on initialization. Each
#   argument is a length of one of the three sides of the triangle.

# - Give your Triangles an instance method, `kind` that returns, as a symbol, its
#   type. The valid types are:

# 1.  `:equilateral`

# 2.  `:isosceles`

# 3.  `:scalene`
