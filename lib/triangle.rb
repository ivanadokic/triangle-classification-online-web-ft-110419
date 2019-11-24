
  class Triangle
    def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    end
    def kind
      if @s1 == @s2 && @s1 == @s3
        return :equilateral
      elsif @s1 == @s2 || @s2 == @s3 || @s3 == @s1
        return :isosceles
      else
        return :scalene
      end
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
end



#   - Write a `Triangle` class that accepts three arguments on initialization. Each
#   argument is a length of one of the three sides of the triangle.

# - Give your Triangles an instance method, `kind` that returns, as a symbol, its
#   type. The valid types are:

# 1.  `:equilateral`

# 2.  `:isosceles`

# 3.  `:scalene`
