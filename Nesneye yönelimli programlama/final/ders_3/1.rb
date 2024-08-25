#Istisnalar : programda ortaya cikan beklenmedik istisnai durumlari yonetmek icin kullanilir.

def uppercase_first_on_match(strings, character)
  strings.find { |string| string.include? character }.upcase
end

uppercase_first_on_match %w[apple orange banana melon], 'a' #=> APPLE

uppercase_first_on_match %w[apple orange banana melon], 'i' #=> undefined method  'upcase' for nil: NilClass(NoMethodError)
