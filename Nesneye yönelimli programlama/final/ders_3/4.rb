def uppercase_first_on_match(strings)
  string = strings.find{ |string| string.include? 'a'}
  raise ArgumentError, 'At least one string must have an "a"'unless string
  string.upcase
end

#hata tipini argument error olarak verdik.
#Hatayi yasadigimiz nesne bizim denetimimizde degilse bu sekilde metot icinde yonetmeyi tercih edebiliriz.