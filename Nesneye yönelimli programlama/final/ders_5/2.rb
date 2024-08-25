class Rectangular
  @@count = 0

  attr_reader :width, :height

  def initialize(width, height)
    @width, @height = width, height

    @@count += 1
  end

  def self.count
    @@count
  end
end

class Square < Rectangular
  attr_reader :length

  def initialize(length)
    @length = length

    super(length, length)
  end
end

def main
  rectangulars = []

  rectangulars << Rectangular.new(1, 2)
  rectangulars << Rectangular.new(3, 5)
  rectangulars << Rectangular.new(4, 9)

  puts Rectangular.count

  squares = []
  squares << Square.new(1)
  squares << Square.new(1)

  puts Square.count #Normalde square sinifindan 2 nesne olusuturuldu
  puts Rectangular.count
end

#Sinif degiskenleri miras yoluyla gecince yeni siniftaki durumlardan etkileniyor

main