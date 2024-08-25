#Coklu miras alma(multiple inheritance) : Ruby  statik anlamda coklu miras alma yoktur ayni anda sadece bir atadan miras alabiliriz
#Fakat katistirma yoluyla coklu miras alma mumkundur.
module M; end

class A; end
class B < A; include M; end

B.ancestors #Burada B nin iki atasi var. M ve A

#Dinamik miras alma
# < bu operatoru kullanmadan yapiliyor. Orn katistirma

class C; include M; end

D = Class.new(A)

#D nesnesi, A nesnesinden dinamik olarak miras aliyor
#D adinda sinif olustur atasi A sinifi olsun
