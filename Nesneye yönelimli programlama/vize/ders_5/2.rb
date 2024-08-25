#Arguman sayisi cok fazla olunca isimlendirilmis argumanlar tercih edilmelidir
class Point
  attr_accessor :x, :y
  
  def initialize(x, y)
    @x, @y = x, y
  end
end

class Rectangular
  attr_reader :position, :width, :height

  def initialize(position:, width:, height:)
    @position = position
    @width = width
    @height = height
  end

  def move(delta_x, delta_y)
    @position = @position.move(delta_x, delta_y)
  end
end

def main
  r = Rectangular.new(position: Point.new(0, 0),width: 3, height: 5)
  puts r
end
main