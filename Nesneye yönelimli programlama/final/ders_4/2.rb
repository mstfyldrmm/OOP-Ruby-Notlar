#UML diyagramlari

#is a ---> Miras alma bir is a iliskisi kurar
#Car is a vehicle

class Vehicle
  def start_engine
    puts "basla"
  end
  
  def stop_engine
    puts "Dur"
  end
end

class Car < Vehicle
  def sunday_drive
    start_engine

    stop_engine
  end
end

def main
  car = Car.new()
  car.sunday_drive
end

main