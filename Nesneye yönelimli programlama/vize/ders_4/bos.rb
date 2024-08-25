class Hastane_ilac
  attr_reader :barkod, :adi, :tur, :firma, :stok, :birim
  def initialize(barkod, adi, tur, firma, stok, birim)
    @barkod, @adi, @tur, @firma, @stok, @birim = barkod, adi, tur, firma, stok, birim
  end

  def ekle
    barkod = gets.chomp.i
    adi = gets.chomp
    stok = gets.chomp.to_i
  end

  def listele
    puts "#{@barkod} numarali, #{@adi} ilacin, #{@tur} turundeki, #{@firma} firma, stok #{@stok}, #{@birim}"
  end

  def cikis
    puts "Gule gule....."
    break;
  end

  def toplam_ilac

  end
end
