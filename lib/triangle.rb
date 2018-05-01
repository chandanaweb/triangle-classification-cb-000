class Triangle
  def initialize(p1,p2,p3)
    @p1 = p1
    @p2 = p2
    @p3 = p3
  end
  def kind
    if (@p1 ==0 && @p2 == 0 && @p3 == 0)
      raise TriangleError
    elsif((@p1 >= @p2 + @p3) ||(@p2 >= @p1 + @p3) || (@p3 >= @p1 + @p2))
      raise TriangleError
   elsif(@p1 == @p2 && @p1 == @p3 && @p2 == @p3)
       return :equilateral
     elsif(@p1 == @p2 || @p1 == @p3 || @p2 == @p3)
       return :isosceles
    else
     return :scalene
    end
  end
  class TriangleError < StandardError
 end

end
