#Nesnenin kaynagi denetimimizde ise cagiran tarafta da yonetmeyi tercih edebiliriz.

def sanitize_strings(strings)
  return strings if strings.any? { |string| string.include? 'a' }

  raise 'At least one string must have an "a"'
end

def uppercase_first_on_match(strings)
  strings.find { |string| string.include? 'a' }.upcase
end

uppercase_first_on_match sanitize_strings(%w[apple orange banana melon]) #=> APPLE
uppercase_first_on_match sanitize_strings(%w[lemon melon]) # undefined method `upcase' for nil:NilClass (NoMethodError)
