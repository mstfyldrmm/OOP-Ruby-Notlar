#kompozisyon : Nesnelerin ornek degiskenlerinde bir baska nesnenin ornek degiskenlerinin olmasidir
#orn : class Rectangular
#def inititialize(position: Point.new,... ) gibi


#!!! Kompozisyon has a iliskisi kurar.
#Car is a vehicle that has an Engine--->Araba motora sahip aractir.

class Engine
  # Motor'la ilgili tüm ortak akıl burada...
  def start
    puts "başla"
  end
  def stop
    puts "dur"
  end
end

class Car
  def initialize
    @engine = Engine.new
  end

  def sunday_drive
    @engine.start

    @engine.stop
  end
end

def main
  car = Car.new
  car.sunday_drive
end

main