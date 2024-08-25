module A
  def metod
    puts "Mustafa Yildirim"
  end
end

class B
  extend A

  metod #Bu normalde sinif metodlarinin calisma seklidir. Nesne metodlari bu sekilde sinif icinde nesne almadan calisamaz.
  #Extend ile A modulunun metod unu B sinifinin sinif metodu haline getirdik
end

#Bu metod miras almayla istenilen sinif icin kullanilabilir.
class C < B; end;


def main
  #a = B.new; a.metod hata verir. DIKKAT!!!!
  B.metod
  C.metod
end

main
