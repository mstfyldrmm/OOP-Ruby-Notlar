#kompozisyon kavrami : Bir sinifin ornek degiskenlerinde, baska bir sinifin nesnesi olabilir.
#ornegin initialize metodundaki position degiskeni, point sinifindan bir nesne alir.Bu nesne kompozisyon olarak bilinir.
class Point
  attr_reader :x, :y
  def initialize(x, y)
    @x, @y = x, y
  end
end

class Rectangular
  attr_reader :position, :width, :height

  def initialize(point, width, height)
    @position = point
    @width    = width
    @height   = height
  end

  def move(delta_x, delta_y)
    @position = @position.move(delta_x, delta_y)
  end

  def to_s
    "[#{width}x#{height}]@#{position}"
  end
end

def main
  r = Rectangular.new(Point.new(0, 0), 3, 5)
  puts r

end

main