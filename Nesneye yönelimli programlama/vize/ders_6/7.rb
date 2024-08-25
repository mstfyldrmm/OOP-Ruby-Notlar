#Sinif metodlari---> Sinif.metod seklinde cagirilir
#Biz onceden nesne.metod seklinde kullaniyorduk

class Point
  attr_reader :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def self.origin #sinif metodunda self pointi gosterir
    new(0, 0)
  end
end

class Rectangular
  attr_reader :position, :width, :height

  def initialize(position: Point.origin, width:, height:)#Point.origin burdaki sinif metodudur.
    @position = position
    @width    = width
    @height   = height
  end
end

def main
  r = Rectangular.new(width: 3, height: 5)
  puts "r : (#{r.position}) widht : #{r.width}, height : #{r.height}"
  puts r
end
main