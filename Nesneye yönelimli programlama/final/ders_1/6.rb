#Secere : Soy agaci
class A
end

class B < A; end

p A.ancestors
p B.ancestors

p Object.ancestors
p Kernel.ancestors #Kernel burada bir modul. Sınıf degil
p BasicObject.ancestors

#ruby de nesnelerin gorunmeyen atalari var
#En tepede BasicObject daha sonra Object

p A.class #=> Class
p B.class #=> Class
p Object.class #=> Class
p Kernel.class #=> Module
p BasicObject.class #=> Class