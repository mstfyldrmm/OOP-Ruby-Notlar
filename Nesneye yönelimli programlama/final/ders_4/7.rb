class A
  def oku
    puts "Yaziyi oku"
  end

  def sil
    puts "Sayfayi sil"
  end
end

class B < A
  def initialize
    @nesne = A.new
  end

  def talimat
    oku
    sil
    puts "Gerekli talimatlar verilmistir"
  end
end

def main
  b = B.new
  b.talimat
end

main