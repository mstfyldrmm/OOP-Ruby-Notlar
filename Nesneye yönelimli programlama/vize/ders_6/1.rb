#Veri sarmalama : protected anahtari
#Ayni sinif uzerinde tanimli olan protected metodlar, siniftan uretilmis nesnelerde kullanilabilir.
#ornegin protected, tanimlandigi sinifin metodlarinda kullanilabilir.
class Point
  include Comparable
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def x 
    @x
  end

  def <=>(other)
    x <=> other.x #burda bir nesnenin x ile diger nesnenin x i ni karsilastirir. metod private olursa hata Ama diger nesnenin x ulasabilmemiz icin public ya da PROTECTED olmalidir.
    #protected ---> Ayni siniftan tanimlanan farkli nesnelerde kullanilma sansi tanir
  end

  protected :x
end


def main
  dizi = [Point.new(2, 6),
  Point.new(3, 4),
  Point.new(7, 8)]

  dizi.sort.each do |r|
    puts r
  end
end
main