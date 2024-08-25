class A
  def initialize
  end

  def meth_inside_a
    puts 'meth_inside_a'
  end

  def some_other_meth
    puts 'defined in a'
  end
end

class B < A
  def meth_inside_b
    puts "meth_inside_b"
  end

  def some_other_meth
    puts 'defined in b'
  end
end

def main
  a = A.new
  b = B.new
  a.meth_inside_a
  a.some_other_meth
  b.meth_inside_a
  b.meth_inside_b
  puts "dikkat B miras aldigi metodu kendi icinde yeniden duzenledigi icin kendi tanimlandigi sekilde calisir"
  b.some_other_meth
end
main
