class Karekok
  attr_reader :x, :y
  def initialize(x, y)
    @x, @y = x, y
  end

  def karekok
    Math.sqrt(@x**2 + @y**2)
  end
end

class Kok_bulma
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def delta(a, b, c)
    @b**2 - 4*@a*@c
  end

  def kok_varmi(a, b, c)
    if delta(a, b, c) < 0
      puts "Kok yok"
    else
      puts "Kok var"
    end
  end

  def kok_bul
    -b + Math.sqrt(delta(a, b, c)) / a
  end
end

def main
  x = 3
  y = 4
  a = Karekok.new(x, y);
  puts "#{a.karekok}"

  f = 1
  g = 2
  h = 1

  b = Kok_bulma.new(f, g, h)
  
  puts b.kok_varmi(f, g, h)

  puts b.kok_bul

end

main