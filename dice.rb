class Dice
  attr_reader :sides, :last_roll

  def initialize(sides = 6)
    @sides = sides
    @last_roll = []
  end

  def roll(number_of_rolls = 1)
    rolls = []
    number_of_rolls.times do
      rolls << rand(1..sides)
    end
    self.last_roll = rolls
  end

  private

  attr_writer :last_roll
end
