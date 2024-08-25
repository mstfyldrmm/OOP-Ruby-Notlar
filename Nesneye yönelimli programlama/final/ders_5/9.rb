class Rectangular
  @count = 0

  def self.count
    @count
  end

  def self.count=(value)
    @count = value
  end
end


def main
  puts Rectangular.count
  Rectangular.count = 25
  puts Rectangular.count
end

main