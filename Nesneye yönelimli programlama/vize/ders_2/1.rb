# frozen_string_literal: true

class Point
  def initialize(x, y)
    @x = x
    @y = y
  end

  attr_reader :x

  attr_writer :x

  attr_reader :y

  attr_writer :y
end

# Bu örnekte görülen x= ve y= metotları birer Setter

# Yazma işlemini dışarı açan ("public" yapan) metotlar

# Kısaca yazıcı, "writer" da denilebilir

def main
  p = Point.new(3, 4)
  puts p.x
  p.x = 25
  p.y = 41
  puts "Yeni x ve y noktalari(#{p.x}, #{p.y})"
end

main
