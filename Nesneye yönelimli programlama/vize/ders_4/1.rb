class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def move(delta_x, delta_y)
    @x += delta_x            #bu metodun sorunu, asli ozelliklerin (x, y)  degistirmesidir
    @y += delta_y             #asli ozellikler insa edildikten sonra degistirilmemelidir
  end
end
def main
  p = Point.new(3, 4)

  puts "X artis miktari :"
  x = gets.chomp.to_i

  puts "y artis miktari :"
  y = gets.chomp.to_i

  p.x += x
  p.y += y

  puts "X : #{p.x} Y : #{p.y}"

end

main