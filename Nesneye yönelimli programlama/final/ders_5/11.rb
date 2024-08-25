#ders 10 un attr reader hali
class Rectangular
  @count = 0

  class << self
    attr_accessor :count
  end
end

def main
  puts "Rectangular nesnesinin sinif nesnesinin degeri : #{Rectangular.count}"
  Rectangular.count = 25
  puts "Rectangular nesnesinin sinif nesnesinin degeri : #{Rectangular.count}"
end

main