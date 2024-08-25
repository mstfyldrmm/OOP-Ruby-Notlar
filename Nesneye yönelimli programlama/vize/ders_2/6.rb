#Yazicilari sadece sinif disindan degilde sinif icindede kullanabiliriz
#Veri sarmalama : Sinif ile dis dunya arasina sinir koymamizi saglaayam kavramdir
class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x,y
  end

  def reset
    self.x = 0 #rubyde ayni sinifin icinden nesne cagiriyorsak basina self koymamiz gerekir!!!!
    self.y = 0
  end
end

def main
  p = Point.new(3, 4)
  puts "(#{p.x}, #{p.y}) noktasi orijine tasinsin mi!!![E/H]"
  cevap = gets.chomp
  if(cevap.upcase == "E")
    p.reset
    puts "Nokta orijine tasindi x : #{p.x} y : #{p.y}"
  end
end
main