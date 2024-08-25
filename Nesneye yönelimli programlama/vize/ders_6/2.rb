require 'forwardable'

class Point
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def distance
    Math.sqrt((@x * @x) + (@y * @y))
  end
end

class Rectangular
  extend Forwardable
  include Comparable

  def_delegator :@position, :distance

  attr_reader :position, :width, :height

  def initialize(position: Point.new(0, 0), width:, height:)
    @position = position
    @width    = width
    @height   = height
  end

  def area
    width * height
  end

  def bigness
    distance * area
  end

  def <=>(other)
    bigness <=> other.bigness
  end

  protected :bigness
end

def main
  rectangulars = [
    Rectangular.new(position: Point.new(0, 0), width: 3, height: 5),
    Rectangular.new(position: Point.new(1, 0), width: 2, height: 4),
    Rectangular.new(position: Point.new(0, 0), width: 3, height: 5),
    Rectangular.new(position: Point.new(2, 4), width: 4, height: 2)
  ]

  rectangulars.sort.each do |z|
    puts z
  end
end
main