#Eger hata bekleniyor ise yani nesnenin nil olma ihtimali varsa

def uppercase_first_on_match(strings, character)
  string = strings.find { |string| string.include? character }
  string.upcase if string
end

uppercase_first_on_match %w[apple orange banana melon], 'i'

#2.yol
def uppercase_first_on_match(strings, character)
  string = strings.find{ |string| string.include? character}
  string&.upcase
end