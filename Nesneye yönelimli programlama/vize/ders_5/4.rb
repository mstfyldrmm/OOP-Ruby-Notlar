#dikdortgenin svg cizimi----->DELEGASYON KAVRAMI
#Delegasyon : Nesne arayuzunde yer alan bazi metodlarin kompozisyona giren ic nesneyle havale edilmesidir.
#Position nesnesi girilmemisse default olarak orijin noktasi alalim

class Point
  attr_accessor :x, :y
  
  def initialize(x, y)
    @x, @y = x, y
  end

  def distance
    Math.sqrt((@x * @x) + (@y * @y))
  end
end

class Rectangular
  attr_reader :position, :width, :height

  def initialize(position: Point.new(0, 0), width:, height:)#position noktasi girilmez ise 0, 0 alir.
    @position = position
    @width = width
    @height = height
  end

  def distance
    @position.distance #position bir point nesnesidir. Point nesnesi kendi sinifindan distance metodunu getirir. Bu sekilde distance metodu, kompozisyonla kullanilmis oldu.
  end

end

def main
  r = Rectangular.new(position: Point.new(3, 4), width: 3, height: 5)
  puts r.distance
end
main