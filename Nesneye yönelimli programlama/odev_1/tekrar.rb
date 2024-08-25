class Foo
  def initialize(str)
     @string = str
  end

  def bar
    @string.upcase
  end

  def self.baz(str)
    str.downcase
  end
end

my_data = Foo.new('abc')
a = my_data.bar

puts a + Foo.baz('XYZ')