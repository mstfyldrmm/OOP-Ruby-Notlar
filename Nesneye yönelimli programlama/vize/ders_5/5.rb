#ruby de delegasyonu kolaylastiran yontem : FORWARDABLE

require 'forwardable'#Standart kutuphaneden dahil ettik

class Point
  attr_reader :x, :y
  
  def initialize(x, y)
    @x, @y = x, y
  end

  def distance
    Math.sqrt((@x * @x) + (@y * @y))
  end
end

class Rectangular
  extend Forwardable

  def_delegator :@position, :distance #Burda position nesnesini aldigimizda, distance metodunu calisabilir hale getirdik.

  attr_reader :position, :width, :height
  
  def initialize(position: Point.new(0, 0), width:, height:)
    @position = position
    @width = width
    @height = height
  end
end

def main
  r = Rectangular.new(position: Point.new(3, 4), width: 5, height: 7)
  puts r.distance
end
main