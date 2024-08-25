class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def move(delta_x, delta_y)
    Point.new(@x + delta_x, @y + delta_y) #move metodu nesne doner
  end
end

def main
  p = Point.new(3, 5)

  puts "X artis miktari :"
  x = gets.chomp.to_i

  puts "y artis miktari :"
  y = gets.chomp.to_i

  q = p.move(x, y)

  puts "(#{p.x}, #{p.y}) noktasi (#{q.x}, #{q.y}) noktasina tasinmistir"


end

main