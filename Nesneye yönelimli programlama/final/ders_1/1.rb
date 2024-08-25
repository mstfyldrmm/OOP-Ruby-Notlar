class Matematik
  attr_accessor :x, :y

  def initialize(x, y, z)
    @x, @y, @z = x, y, z
  end

  def toplam
    (@x + @y + @z)
  end
end

class Ortalama < Matematik
  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x, @y, @z = x, y, z
  end

  def aritmetik_ortalama
    toplam / 3
  end
end

def main
  a = Ortalama.new(1, 2, 3)
  puts a.toplam
  puts "#{a.x}, #{a.y}, #{a.z} sayilarinin toplami #{a.toplam}, aritmetik ortalamasi : #{a.aritmetik_ortalama}"
end
main