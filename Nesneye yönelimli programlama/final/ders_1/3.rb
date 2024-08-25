class Point
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y= y
  end

  def Point.origin
    Point.new(0, 0)
  end
end

class Rectangular
  attr_reader :position, :width, :height

  def initialize(position: Point.origin, width:, height:)
    @position = position
    @width    = width
    @height   = height
  end

  def area
    width * height
  end

  def periphery
    2 * (width + height)
  end

  def move(delta_x, delta_y)
    @position = @position.move(delta_x, delta_y)
  end

  def to_s
    "[#{width}x#{height}]@#{position}"
  end
end

class Square < Rectangular
  attr_reader :position, :side

  def initialize(side, position: Point.origin)
    super(position: position, width: side, height: side) #super metodu, ata siniftaki initialize metodundaki argumanlari width = height = side halinde getirdi
  end

  def area
    side * side
  end

  def periphery
    4 * side
  end

  def to_s
    "#{side}@#{position}"
  end

end

def main
  square = Square.new 3, position: Point.new(3, 5)
  rectangular = Rectangular.new width: 3, height: 3, position: Point.new(3, 5)
  puts square.to_s
  puts rectangular.to_s
end
main