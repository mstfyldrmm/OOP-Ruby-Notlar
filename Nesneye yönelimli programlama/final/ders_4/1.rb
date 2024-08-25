#Cok bicimlilik = Polimorfizm
#Polimorfizm = Miras almada, ata sinifa ait metodlarda miras alinir. Ancak her iki siniftada ayni method bulundugu zaman ata siniftaki metod kullanilacaktir
#Bu metodu ata sinifta olan bir methodu, turetilen sinifta yeniden olusturmak istedigimizde kullaniriz


class Kisi
  def initialize(ad, soyad)
    @ad, @soyad = ad, soyad
  end
  
  def selam
    puts "Merhaba ben #{@ad.capitalize} #{@soyad.capitalize} "
  end
end

class Muhendis < Kisi
  def initialize(ad, soyad, meslek)
    super(ad, soyad)
    @meslek = meslek
  end

  def selam
    puts "#{super}Ben bir #{@meslek} olarak calisiyorum"
  end
end

def main
  muhendis = Muhendis.new("Mustafa", "Yildirim", "Bilgisayar Muhendisi")
  muhendis.selam
end

main