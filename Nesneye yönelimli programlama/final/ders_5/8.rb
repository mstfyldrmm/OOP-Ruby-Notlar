class Rectangular
  @count = 0

  attr_reader :width, :height

  def initialize(width, height)
    @width = width
    @height = height

    Rectangular.count += 1
  end

  def self.count
    @count
  end

  def self.count=(value)
    @count = value
  end
end

class Square < Rectangular
  attr_reader :lenght

  def initialize(lenght)
    @lenght = lenght

    super(lenght, lenght)
  end

end

def main
  rectangulars = []

  rectangulars << Rectangular.new(1, 2)
  rectangulars << Rectangular.new(3, 5)
  rectangulars << Rectangular.new(4, 9)

  squares = []
  squares << Square.new(1)
  squares << Square.new(2)

  puts Square.count #Sinif nesnesi kalitim yolu ile gecmez. O sinifa aittir.
  puts Rectangular.count
end

main