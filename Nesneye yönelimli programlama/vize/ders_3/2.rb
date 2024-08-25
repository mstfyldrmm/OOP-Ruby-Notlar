class Ogrenci_not
attr_accessor :vize, :final

def initialize(vize, final)
  @vize, @final = vize, final
end

def ortalama
  vize*0.4 + final*0.6
end

def sifirla
  self.vize = 0
  self.final = 0
end

private :sifirla #sifirla metodunu bu sinifa ozel bir metod haline getirdik. Baska siniflarda kullanma sansi yok!!!
end

def main
  puts "Ogrencinin vize final notlarini giriniz :"
  bilgi = gets.chomp.split

  p = Ogrenci_not.new(bilgi[0].to_i, bilgi[1].to_i)
  puts "Ogrencinin ortalamasi #{p.ortalama}"

  puts "Ogrencinin notlarini sifirlamak ister misiniz?[E/H]"
  cevap = gets.chomp

  if cevap.upcase == "E"
    puts "Erisiminiz yok. Lutfen yonetici ile gorusunuz"
  end
end
main