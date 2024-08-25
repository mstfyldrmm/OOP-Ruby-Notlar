#Kompozisyon-miras alma-delegason islemlerinin kullanimi
#nesne arayuzunde yer alan bazi metodlarin kompozisyona giren ic nesneye havale edilmesi

class Engine
  # Motor'la ilgili tüm ortak akıl burada...
  def start
    puts "başla"
  end
  def stop
    puts "dur"
  end
end

class GasolineEngine < Engine
  # Benzinli Motor
end

class DieselEngine < Engine
  # Dizel Motor
end

class Car
  def initialize
    @engine = GasolineEngine.new
  end

  def sunday_drive
    puts "Motor tipi: #{@engine.class}"
    start
    stop
  end
  
  def switch_to_diesel
    @engine = DieselEngine.new
  end

  def start
    @engine.start
  end

  def stop
    @engine.stop
  end
end

def main
  car = Car.new
  car.sunday_drive
  car.switch_to_diesel
  car.sunday_drive
end

main
