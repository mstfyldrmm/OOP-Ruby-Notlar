#super metodu : cagirildigi noktada icinde bulundugu metodun  ata sinifindakini cagirir ve arguman alir!!!
class A
  def meth
    puts "A class nin meth metodu"
  end
end

class B < A
  def meth
    super() #burada meth metodu icinde cagirildigi icin ata siniftaki meth calisir

    puts "B class nin meth metodu"
  end
end

def main
  a = A.new
  b = B.new

  b.meth
end
main