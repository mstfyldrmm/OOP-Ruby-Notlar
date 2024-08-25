#GETTERS

class Point
  attr_reader :x, :y #2 dersin kisa hali yani getters metodlari yani artik x ve y metodlari tanimlamaya gerek kalmadi reader disaridan okumayi imkan tanir
  def initialize(x, y)
    @x, @y = x, y
  end
end

#SETTERS

class Bilgi
  attr_writer :ad, :soyad #bu metod disaridan yazmaya imkan tanir. Okumaya imkan tanimaz
  def initialize(ad, soyad)
    @ad, @soyad = ad, soyad
  end
end

def main
  p = Point.new(3, 4)
  puts p.x, p.y

  q = Bilgi.new("mustafa", "yildirim")
  # puts q.ad, q.soyad erismeye calisirsak hata verir
  q.ad = "bos" #q nesnesinin adini bos olarak degistirdi
end
main

#Getters disaridan okumaya saglayan metod--> attr_writer
#Setters disaridan yazmayi sagayan  metod--> attr_reader 