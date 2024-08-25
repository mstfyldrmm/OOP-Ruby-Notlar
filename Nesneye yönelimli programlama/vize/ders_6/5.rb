#Sinif metodlari---> Sinif.metod seklinde cagirilir
#Biz onceden nesne.metod seklinde kullaniyorduk

class Point
  attr_reader :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def Point.origin
    Point.new(0, 0)
  end
end


def main
  q = Point.new(2, 3)
  s = Point.origin
  p q.x, q.y
  puts s.x, s.y
end
main