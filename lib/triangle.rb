class Triangle
  # write code here
  attr_accessor :kind

def initialize l1, l2, l3
  lengths = [l1, l2, l3]

    if l1 <= 0
      raise TriangleError
    elsif l2 <=0
      raise TriangleError
    elsif l3 <= 0
      raise TriangleError
    elsif l1 + l2 <= l3
      raise TriangleError
    elsif l2 + l3 <= l1
      raise TriangleError
    elsif l3 + l1 <= l2
      raise TriangleError
    elsif lengths.uniq.length == 1
        @kind = :equilateral
    elsif lengths.uniq.length == 2
         @kind = :isosceles
    elsif lengths.uniq.length == 3
        @kind = :scalene
    end   
end

class TriangleError < StandardError
end

end
