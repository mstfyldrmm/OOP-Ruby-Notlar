#extend ile include farki
#include, dahil ettigimiz sinifin metodlari, dahil edilen sinifin nesne metodlarina donusur. 
#Extend, dahil edilen metodlari, dahil edilen sinifin  sinif metodlarina donus

module M
  def moo #burdaki metoda ornek def_delagators metodudur
    puts "moooooooooooooo"
  end
end

class A
  extend M
end

class B
  def self.mo
    puts "B sinifinin sinif metodu. Moo extend ile A sinifinin sinif nesnesi yapar."
  end
end

def main
  A.moo #moo metodu burada sinif metoduna donustu
  B.mo
end

main
