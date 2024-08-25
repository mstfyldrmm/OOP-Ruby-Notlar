require 'forwardable'

class A
  def oku
    puts "Yaziyi oku"
  end

  def sil
    puts "Sayfayi sil"
  end
end

class B < A
  extend Forwardable

  def_delegators :@nesne, :oku, :sil

  def initialize
    @nesne = B.new
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