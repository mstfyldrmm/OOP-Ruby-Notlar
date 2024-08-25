#Ders 9 un gelistirilmis hali
class Rectangular
  @count = 0

  class << self #Artik sinif metodlari basina self seklinde tanimlamamiza gerek yok
    def count
      @count
    end

    def count=(value)
      @count = value
    end
  end
end

def main
  puts "Rectangular sinifinin count sinif degiskeni degeri : #{Rectangular.count}"
  Rectangular.count = 25
  puts "Rectangular sinifinin count sinif degiskeni degeri : #{Rectangular.count}"
end

main