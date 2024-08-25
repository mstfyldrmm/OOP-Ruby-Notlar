#meta metodlar--> to_s ve <=>
#Yeni bir meta metod---> eql? : Es deger mi
#Her nesnenin  en ust atadan itibaren bir varsayilan bir gerceklenmesi bulunuyor

class Point
  include Comparable

  attr_reader :x, :y
  
  def initialize(x, y)
    @x, @y = x, y
  end

  def eql?(other)
    [x, y] == [other.x, other.y]#Burda point nesnesinden ayni x, y degeri var mi diye sorguluyoruz.
  end
end

class Rectangular
  include Comparable

  attr_reader :position, :width, :height
  
  def initialize(position: Point.new(0, 0), width:, height:)
    @position = position
    @width = width
    @height = height
  end

  def eql?(other)
    [position, width, height] == [other.position, other.width, other.height] #Burda Rectangular nesnesinden ayni position, width, height degeri var mi diye sorguluyoruz.
  end
end

def main
    rectangulars = [
      Rectangular.new(position: Point.new(0, 0), width: 3, height: 5),
      Rectangular.new(position: Point.new(1, 0), width: 2, height: 4),
      Rectangular.new(position: Point.new(0, 0), width: 3, height: 5),
      Rectangular.new(position: Point.new(2, 4), width: 4, height: 2)
    ]
    
    puts rectangulars.uniq.size # 3
end
main