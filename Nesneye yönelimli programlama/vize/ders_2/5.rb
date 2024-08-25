class Rehber
  attr_accessor :ad, :soyad, :no

  def initialize(ad, soyad, no)
    @ad, @soyad, @no = ad, soyad, no
  end

  def yazdir
    puts "Ad : #{ad}\nSoyad : #{soyad}\nNo : #{no}"
  end  
end

def main
  
  puts "\t\tMENU
  1-Kisi olusturma
  2-Var olan kisiyi bilgilerini duzenleme
  3-Rehberi yazdirma"

  puts "Seciminizi tuslayiniz"
  secim = gets.chomp.to_i

  if(secim == 1)
    puts "Kisi adi, soyadi ve numarasini tuslayiniz :"
    bilgiler = gets.chomp.split

    p = Rehber.new(bilgiler[0], bilgiler[1], bilgiler[2].to_i)

  elsif(secim == 2)
    puts "Kisinin tekrardan bilgilerini giriniz :"
    bilgiler = gets.chomp.split

    q = Rehber.new(bilgiler[0], bilgiler[1], bilgiler[2].to_i)
  
  elsif(secim == 3)
    p.yazdir

  end

end

main