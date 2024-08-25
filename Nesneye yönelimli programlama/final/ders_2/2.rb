module M
  def some_meth
    puts "some meth"
  end
end

class A
  include M
end

class C
  def some_meth
    puts "some meth"
  end
end

class D < C; end

#iki kodda ayni islevi gorur fakat ciddi farklari vardir

#class D < C statik miras almadir yani miras alma iliskisi erken kurulur
#include M is dinamik miras almadir yani miras alma isi calisma zamaninda daha gec fazda kuruluyor



def main
end
main