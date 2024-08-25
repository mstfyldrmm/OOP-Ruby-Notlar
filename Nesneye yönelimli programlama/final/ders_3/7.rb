def uppercase_first_on_match(strings)
  string = strings.find { |string| string.include? 'a' }
  raise ArgumentError, 'At least one string must have an "a"' unless string

  string.upcase
end

def main
  begin
    puts uppercase_first_on_match ARGV
  rescue ArgumentError
    abort 'Error occured'
  end
end 