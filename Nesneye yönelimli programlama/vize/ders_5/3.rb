#Position nesnesi girilmemisse default olarak orijin noktasi alalim
class Point
  attr_accessor :x, :y
  
  def initialize(x, y)
    @x, @y = x, y
  end
end

class Rectangular
  attr_reader :position, :width, :height

  def initialize(position: Point.new(0, 0), width:, height:)#position noktasi girilmez ise 0, 0 alir.
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