class Point
  attr_reader :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end
  
  def move_to_origin
    reset
  end

  def to_s
    "(#{x}, #{y})"
  end

  private #burada private anahtarindan sonra gelen tum metodlari private yapar. Ozel olarak yapmak istersek farkli sekilde yapilmasi gerekir.

  attr_writer :x, :y

  def reset
    self.x = 0
    self.y = 0
  end
end

def main
  p = Point.new(3, 4)
  puts p.x, p.y

  p.move_to_origin
  puts p.to_s
  #p.x = 25   #yazma isini private olarak yaptik yani sadece bizim kendi sinifimiza ozel.Yani metodlara nesne.metod sklinde erisime izin verilmiyor
  #Metod bulunamadi hatasi verir!!!!


end
main