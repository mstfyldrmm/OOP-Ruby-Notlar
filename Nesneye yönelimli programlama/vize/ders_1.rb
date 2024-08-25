class Araba
  def initialize(renk, km, yil, model)
    @renk, @model, @yil, @km = renk, model, yil, km
  end

  def color
    @renk
  end

  def year
    @yil
  end

  def model
    @model
  end

  def aldigi_yol
     @km
  end
end

def main

  f = Araba.new("Beyaz", 65000, 2015, "Fiat Fiorino")

  puts "Marka : #{f.model} Yil : #{f.year} Km : #{f.aldigi_yol} Renk : #{f.color}"




end

main

#Constructors(yapici metodlar) : Amaci olusturulan nesneyi ilk kllanima hazirlamasidir. Rubydeki constructor initalize metodudur.

#Instance : Nesne