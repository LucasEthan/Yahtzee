class Dice
  attr_reader :sides, :last_roll

  def initialize(sides = 6)
    @sides = sides
    @last_roll = []
  end

  def roll(number_of_rolls = 1)
    rolls = []
    number_of_rolls.times do
      rolls << individual_roll
    end
    self.last_roll = rolls
  end

  def number_of_dice_in_last_roll
    last_roll.count
  end

  def individual_roll
    rand(1..sides)
  end

  def reroll(*indexes)
    raise IndexError if indexes.any? && last_roll.empty?

    indexes.each do |index|
      raise IndexError if index >= number_of_dice_in_last_roll
    end

    roll(number_of_dice_in_last_roll) if indexes.empty?

    indexes.each do |index|
      last_roll[index] = individual_roll
    end
    last_roll
  end

  private

  attr_writer :last_roll
end
