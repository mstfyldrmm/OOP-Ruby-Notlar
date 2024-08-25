#Ruby de ayni sinifin icinden nesne cagiriyorsak self ile cagirilmalidir
#Sinif metodlari, sinif.metod seklinde cagirilir
#super metodu parametresiz cagirilirsa direk olarak ata sinifindaki metod cagirilir

#!!!!Eger cocuk sinifindaki metod parametre aliyor fakat ata sinifindaki metod parametre almiyorsa super() kullanilir.Aksi halde hata verir
#Raise hata uretme sinifi --> raise istisnaTipi, "hata iletisi"
#Hata tipi belirtilmezse RunTimeError doner.
#Polimorfizm : Kalitim ile alinan metodun sinif icinde yeniden tanimlanmasidir

#Miras alma is a iliskisi kurar
#Kompozisyon ise has a iliskisi kurar---> Kompozisyon, bir sinifin yapici metodunda diger sinifin nesnesinin olmasidir

#Sinif degiskenleri @@ ile tanimlanir
#Ornek degiskenler @ ile tanimlanir.
#Sinif degiskenlerine sinif icinden yerlesmek mumkun.
#Sinif degiskenleri miras alindigi sinifta olusan durumlardan etkilenir


#Self : 

#Sinif nesnesinin nitelikleri

#Extend ile include farki 

#include dahil edilen metodlar o sinifin nesne metodu haline gelir

class Foo
  attr_accessor :a

  def initialize(a)
    @a = a
  end
  
  def bar
    self.a += 3
  end
end

class Bar < Foo
  def bar
    super
    a + 5
  end
end

b = Bar.new(7)

puts b.bar + b.a