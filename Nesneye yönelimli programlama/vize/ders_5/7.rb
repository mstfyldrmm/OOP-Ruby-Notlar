require 'forwardable'

class Matematik
  attr_reader :x, :y, :z

  def initialize(x, y, z)
    @x, @y, @z = x, y, z
  end

  def toplam
    @x + @y + @z
  end
end

class Delegasyon
  extend Forwardable
  def_delegator :@d, :toplam

  attr_reader :a, :b, :c, :d
  def initialize(a, b, c, d)
    @a, @b, @c, @d = a, b, c, d
  end

  def ar_ort
    @d.toplam / 3
  end
end

def main
  a = Delegasyon.new(2, 3, 4, Matematik.new(2, 3, 4))
  puts a.ar_ort
end
main