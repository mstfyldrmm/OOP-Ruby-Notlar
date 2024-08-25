class Sinif
  def initialize
    @renk = "Kirmizi"
  end

  def renk
    @renk
  end
end

def main
  p, q = Sinif.new

  puts p.renk

  

  #Eger renk metodu tanimlamazsak puts car.renk dersek hata verir. Cunku ruby nesne.metod seklinde calisir

  

end


#ruby de sinif icinde kullanilacak degiskenler icin basina @ isareti konmalidir. Bu sinifin instance(ornek) degiskenleri oluyor

main