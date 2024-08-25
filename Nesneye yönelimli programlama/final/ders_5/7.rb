#Sinif nesnesinin nitelikleri
class A
  @nesne_a = 0

  def initialize
    A.nesne_a += 1
  end

  def self.nesne_a
    @nesne_a
  end

  def self.nesne_a=(value)
    @nesne_a = value
  end
end

class B < A
end

def main
  bos = []
  nesneler = []
  
  nesneler << A.new
  nesneler << A.new
  nesneler << A.new
  nesneler << A.new

  bos << B.new
  bos << B.new
  bos << B.new
  
  puts B.nesne_a #Sinif nesnesi degiskeni kalitim ile gecdi fakat @count = 0 olarak tekrardan tanimlamak gerekir(nill olarak gelir)
  puts "Dizinin boyutu #{bos.length}"

  puts A.nesne_a #A sinifindan 4 nesne uretildi ama kalitim ile olusan B sinifindan 2 nesne uretildigi icin toplamda 6 adet nesne uretilmis oldu.
  puts "Nesneler dizisinin boyutu #{nesneler.length}"
end
main