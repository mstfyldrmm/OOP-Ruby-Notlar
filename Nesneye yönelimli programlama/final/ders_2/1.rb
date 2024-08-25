#Katistirma tekrar

module M; end

class A; end
class B < A; include M; end

#include m ile bir modulun baska sinifa katistirilmasi "miras alma etkisi yaratiyor"

p B.ancestors

#dikkat!!! ilk once B < A daha sonra include M calisir. Bu sebeple B nin  soy agaci--> B M A ....