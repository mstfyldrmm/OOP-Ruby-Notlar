#Ders 5 kodun daha iyilestirilmis hali
require 'forwardable'

# Motor
class Engine
  # Motor'la ilgili tüm ortak akıl burada...
  def start
    puts 'başla'
  end

  def stop
    puts 'dur'
  end
end

class GasolineEngine < Engine
  # Benzinli Motor
end

class DieselEngine < Engine
  # Dizel Motor
end

class Car
  extend Forwardable

  def_delegators :@engine, :start, :stop

  def initialize
    @engine = DieselEngine.new
  end

  def sunday_drive
    puts "Motor tipi: #{@engine.class}"
    start
    stop
  end

  def switch_to_diesel
    @engine = DieselEngine.new
  end
end

def main
  car = Car.new
  car.sunday_drive
  car.switch_to_diesel
  car.sunday_drive
end

main
