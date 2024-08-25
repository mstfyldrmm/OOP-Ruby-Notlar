#onceden yazilmis kodlarin kullanilmasina code reuse denir. Kompozisyon buna imkan tanir.
class Point
  attr_accessor :x, :y
  
  def initialize(x, y)
    @x, @y = x, y
  end
end

class Rectangular
  attr_reader :position, :width, :height

  def initialize(position, width, height)#position bir point nesnesidir. Iste bu durum kompozisyona ornektir.
    @position = position
    @width = width
    @height = height
  end

  def move(delta_x, delta_y)
    @position = @position.move(delta_x, delta_y)
  end
end

def main
  r = Rectangular.new(Point.new(0, 0), 3, 5)
  puts r
end
main