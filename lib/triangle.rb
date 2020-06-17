class Triangle
  # write code here
  
  class TriangleError < StandardError
    
  end
  
  
  
  def initialize(x, y, z)
    
    @x = x
    @y = y
    @z = z
    if (@x + @y) <= @z || (@y + @z) <= @x || (@x + @z) <= @y
      raise TriangleError        
    end

  end

  def kind
    if @x == @y && @y == @z
      :equilateral
    elsif @x == @y || @x == @z || @y == @z
      :isosceles
    else
      :scalene 
    end

  end
end