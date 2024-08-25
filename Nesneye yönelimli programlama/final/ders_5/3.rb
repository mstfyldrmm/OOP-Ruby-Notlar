#self in oykusu 
#Sınıf nesnesi niteliklerine nasıl erişilir?


class SomeClass
  p self
  
  def instance_metod  
    p self
  end
end

class Birsinif
  #sinif nesnesinin bolgesi

  def herhangiMetod
    #siniftan olusturulan nesnenin alani
  end
end

class Cat
  puts self
  def meow
    puts self
  end
end


def main
  some = SomeClass.new
  some.instance_metod
  Cat.new.meow
end

main

