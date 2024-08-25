class Point
  attr_reader :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end
  
  def distance
    Math.sqrt((@x * @x) + (@y * @y))
  end

  def eql?(digeri)
    distance  == other.distance
  end
end

def main
  noktalar = [Point.new(2, 4), Point.new(3, 4), Point.new(4, 8), Point.new(7, 4)]
  puts noktalar.uniq.size
end
main