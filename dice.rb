class Dice
  attr_reader :sides

  def initialize(sides = 6)
    @sides = sides
    @roll = roll
  end

  def roll(number_of_rolls = 1)
    roll = 0 # accumulator
    number_of_rolls.times { roll += rand(1..sides) }
    roll
  end
end
