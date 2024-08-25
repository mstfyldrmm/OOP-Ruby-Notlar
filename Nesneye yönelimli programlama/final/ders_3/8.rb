#Hata detaylarina nasil erisecegiz? Tabikide uretilen hata nesnesiyle
#Hata iletisi uretilen hata nesnesinde bulunur.
#Hata nesnesine soyle erisiyoruz---> rescue  <<Hata tipi>> => << Hata nesnesini tasiyacak degisken>>

def uppercase_first_on_match(strings)
  string = strings.find { |string| string.include? 'a' }
  raise ArgumentError, 'At least one string must have an "a"' unless string

  string.upcase
end

def main
  puts uppercase_first_on_match ARGV
rescue ArgumentError => e
  abort "Error occured: #{e.message}"
end

main