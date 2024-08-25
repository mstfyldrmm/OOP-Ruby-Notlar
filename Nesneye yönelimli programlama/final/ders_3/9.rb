def uppercase_first_on_match(strings)
  string = strings.find { |string| string.include? 'a' }
  raise ArgumentError, 'At least one string must have an "a"' unless string

  string.upcase
end

def main
  puts uppercase_first_on_match #ARGV nesnesini vermezsek ArgumentError doner. Bu sebeple hatalar birbirine karisir. Bu yuzden ozel hata tipi kullanmamiz lazim
rescue ArgumentError => e
  abort "Error occured: #{e.message}"
end

main