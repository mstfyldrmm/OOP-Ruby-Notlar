class Example
  def do_something
    banana = "variable"

    puts banana
    puts self.banana
  end

  def banana
    "method"
  end

  def falan
    p self.banana
  end
end

def main
  Example.new.do_something
  Example.new.falan
end

main