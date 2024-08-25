class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def toplam
    x + y
  end

  def carp
    x * y
  end

  private :carp

end

def main
  p = Point.new(3, 4)
  puts p.x
  puts "Sayilarin toplami #{p.toplam}"
  #puts "Sayilarin carpimi #{p.carp}" #private metod oldugu icin hata verir
end

main