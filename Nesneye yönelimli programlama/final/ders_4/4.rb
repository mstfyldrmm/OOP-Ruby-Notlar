#Mumkun olan her yerde kompozisyonu miras almaya tercih et
#Bazen miras almayla kompozisyon birlikle kullanilabilir.

class Engine
  def start
    puts "Basla"
  end

  def stop
    puts "Dur"
  end
end

class GasolineEngine < Engine
end

class DieselEngine < Engine
end

class Car
  def initialize
    @engine = GasolineEngine.new #Kompozisyon yapilan kod bolumu
  end

  def sunday_drive
    puts "Motor tipi : #{@engine.class}"
    @engine.start
    @engine.stop
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