#Sinif degiskenleri : Rubyde sinif degiskenleri @@ ile temsil edilir
#Ornek degiskenler : @ ile temsil edilir
#Sinif degiskeni : Sinif icerisinde nesne metodlari dahil her yerden erisilebiliyor ama disaridan erisilemiyor
#Sinif degiskenleri miras alma yoluylada geciyor
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

def main
  rectangulars = []

  rectangulars << Rectangular.new(1, 2)
  rectangulars << Rectangular.new(3, 5)
  rectangulars << Rectangular.new(4, 9)

  puts Rectangular.count #Burda bize rectangular sinifindan kac adet nesne uretildigini verir.
end

main