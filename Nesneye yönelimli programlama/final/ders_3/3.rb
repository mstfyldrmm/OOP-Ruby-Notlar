#raise : istisna uretir.
#genel formu---> raise [<<istisna sinifi>>, ] <<Hata iletisi>>

#!! Raise hata tipi tanimlanmandigi zaman RunTimeError tipinde hata doner.

def uppercase_first_on_match(strings)
  string = strings.find { |string| string.include? 'a' }
  raise 'At least one string must have an "a"' unless string

  string.upcase
end

#Bu sekilde tanimlamak dogru degil...Hata tipini belirlememiz gerekir.
