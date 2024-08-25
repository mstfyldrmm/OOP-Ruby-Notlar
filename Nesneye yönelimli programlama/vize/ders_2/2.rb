class Point
  def initialize(x, y)
    @x, @y = x, y
  end

  def x
    @x
  end

  def y
    @y
  end

  def x=(disaridan_girilen)
    @x = disaridan_girilen
  end

  def y=(disaridan_girilen)
    @y = disaridan_girilen
  end
end

def main
  p = Point.new(3, 4)
  q = Point.new(3, 4)
  puts "Suan (#{p.x}, #{p.y}) noktasindasiniz... "
  puts "X noktasini ne kadar otelesin :"
  artir_x =  gets.chomp.to_i
  puts "y noktasini ne kadar otelesin :"
  artir_y =  gets.chomp.to_i
  q.x = p.x  + artir_x
  q.y = p.y + artir_y
  uzaklik = Math.sqrt((q.x - p.x)**2 + (q.y - p.y)**2)
  puts "Yeni gelinen nokta : (#{q.x}, #{q.y}) eski noktaya olan uzakiligi #{uzaklik}"

end
main