class Hesap
  attr_accessor :bakiye

  def initialize(bakiye)
    @bakiye = bakiye
  end

  def para_cekme(tutar)
    Hesap.new(@bakiye - tutar)
  end

  def para_yatirma(tutar)
    Hesap.new(@bakiye + tutar)
  end

  def eft(tutar)
    Hesap.new(@bakiye - tutar)
  end
end

def main

  bakiye = Hesap.new(1000);

  puts "1-Para cekme
2-Para yatirma
3-Bakiye goruntuleme
4-EFT/HAVALE
5-Kart iadesi
Cikis icin 6 tuslayiniz\n\n"

puts "Lutfen yapmak istediginiz islemi tuslayiniz :"
islem = gets.chomp.to_i

until islem == 6

  if islem == 1
    puts "Cekmek istediginiz tutari tuslayiniz"
    cekim = gets.chomp.to_i
    yeni = bakiye.para_cekme(cekim)
    puts "Eski bakiyeniz : #{bakiye.bakiye} Yeni bakiyeniz : #{yeni.bakiye}"
  elsif islem == 2
    puts "Yatirmak istediginiz tutari tuslayiniz"
    cekim = gets.chomp.to_i
    yeni = bakiye.para_yatirma(cekim)
    puts "Eski bakiyeniz : #{bakiye.bakiye} Yeni bakiyeniz : #{yeni.bakiye}"
  elsif islem == 4
    puts "EFT/HAVALE istediginiz tutari tuslayiniz"
    cekim = gets.chomp.to_i
    yeni = bakiye.eft(cekim)
    puts "Eski bakiyeniz : #{bakiye.bakiye} Yeni bakiyeniz : #{yeni.bakiye}"
  elsif islem == 3
    puts "Mevcut bakiyeniz : #{bakiye.bakiye}"
  end
end
end
main