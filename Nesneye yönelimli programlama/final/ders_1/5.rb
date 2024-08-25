class A
  def meth(x)
    puts "meth in A: #{x}"
  end
end

class B < A
  def meth(x)
    super #bu sekilde arguman verilmeden super cagirilirsa, b nesnesine verdigimiz argumanlar a nesnesinede gecer

    puts 'meth in B'
  end
end

a = A.new
b = B.new

b.meth(42)

#superin kullanildigi metod arguman aliyor fakat ata sinifinfaki arguman almiyorsa super() kullanin