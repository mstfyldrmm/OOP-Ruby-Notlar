class Bilgi
  attr_reader :ad, :soyad, :dogum_yeri, :dogum_tarihi, :tc
  attr_writer :ad, :soyad, :dogum_yeri, :dogum_tarihi, :tc

  def initialize(ad, soyad, dogum_yeri, dogum_tarihi, tc)
    @ad, @soyad, @dogum_yeri, @dogum_tarihi, @tc = ad, soyad, dogum_yeri, dogum_tarihi, tc 
  end
end

def main
  p = Bilgi.new("mustafa", "Yildirim", "Erzurum", "18.10.2000", 10034238584)
  puts "  Adi : #{p.ad}
  Soyadi : #{p.soyad}
  Dogum Tarihi : #{p.dogum_tarihi}
  Dogum Yeri : #{p.dogum_yeri}
  Tc no : #{p.tc}"

  puts "Kimlik bilgilerinizi onayliyor musunuz : E/H"
  cevap = gets.chomp

  if(cevap.upcase == "H")
    puts "Degistirmek istediginiz bilginiz :
    Ad
    soyad
    Dogum yeri
    Dogum tarihi
    Tc no"

    puts "Lutfen degistirmek istediginiz veriyi tuslayin [1-5]: "
    tus = gets.chomp.to_i

    if(tus == 1)
      p.ad = gets.chomp
    
    elsif(tus == 2)
      p.soyad = gets.chomp
  
    elsif(tus == 3)
      p.dogum_yeri = gets.chomp
  
    elsif(tus == 4)
     p.dogum_yeri = gets.chomp
  
    elsif(tus == 4)
      p.tc = gets.chomp
    end
    puts "Yeni kimlik bilgileriniz :"
    puts "  Adi : #{p.ad}
  Soyadi : #{p.soyad}
  Dogum Tarihi : #{p.dogum_tarihi}
  Dogum Yeri : #{p.dogum_yeri}
  Tc no : #{p.tc}"

  end
end
main