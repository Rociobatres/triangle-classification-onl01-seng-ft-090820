class Triangle
  
  attr_accessor :side_1, :side_2, :side_3, :equilateral, :isosceles, :scalene
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end 
  
  def equilateral
    if self.side_1 == self.side_2 && self.side_1 == self.side_3
      true 
    end 
    end 
    
  def isosceles
    if self.side_1 == self.side_2 || self.side_1 == self.side_3 || self.side_2 == self.side_3
      true 
    end   
  end 
  
  def kind
    if self.side_1 + self.side_2 + self.side_3 <= 0 
      begin
        raise TriangleError
      rescue TriangleError => error 
        puts error.message
      end 
    elsif self.equilateral == true 
      :equilateral
    elsif self.isosceles == true 
      :isosceles
    else 
      :scalene
    end 
  end   
  
  class TriangleError < StandardError
    def message
      "Some don't look right."
    end 
  end 
end 
