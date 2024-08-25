#comparable modulu-->Siralanabilir nesne toplulugnda nihai siralama islemini yapiyor
#comparable modulu bizden karsilastirabilmek icin lojik ifadeler ister.
#Comparable metodu, sort metodlarini dahil ederek ilgili dizide siralama islemini yapar.
class Point
  include Comparable

  attr_reader :x, :y
  
  def initialize(x, y)
    @x, @y = x, y
  end

  def distance
    Math.sqrt((@x * @x) + (@y * @y))
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

  def area
    width * height #Siralamanin alana gore olmasi icin metod tanimladik.
  end

  def <=>(other)#Sonucu uc sonuclu bir islem : kucuk, esit, buyuk.
    if area < other.area
      -1
    elsif area > other.area
      1
    else
      0
    end
  end
end

def main
  rectangulars = [
    Rectangular.new(position: Point.new(0, 0), width: 3,  height: 5),
    Rectangular.new(position: Point.new(1, 0), width: 2,  height: 4),
    Rectangular.new(position: Point.new(0, 0), width: 10, height: 6),
    Rectangular.new(position: Point.new(2, 4), width: 1,  height: 2)
  ]

  rectangulars.sort.each do |r|
    puts r
  end
end
main