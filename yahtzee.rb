class Yahtzee
  attr_accessor :rounds
  attr_reader :upper_sect_score, :lower_sect_score

  def initialize
    @upper_sect_score = 0
    @lower_sect_score = 0
    @rounds = []
  end

  class << self
    # Upper section
    def ones(rolls)
      rolls.count(1)
    end

    def twos(rolls)
      rolls.count(2)
    end

    def threes(rolls)
      rolls.count(3)
    end

    def fours(rolls)
      rolls.count(4)
    end

    def fives(rolls)
      rolls.count(5)
    end

    def sixes(rolls)
      rolls.count(6)
    end

    # Lower section
    def three_of_a_kind(rolls)
      return 0 unless same_dice?(rolls, 3)

      rolls.sum
    end

    def four_of_a_kind(rolls)
      return 0 unless same_dice?(rolls, 4)

      rolls.sum
    end

    def full_house(rolls)
      return 0 unless same_dice?(rolls, 3) && same_dice?(rolls, 2)

      25
    end

    def small_straight(rolls)
      return 0 unless consecutive_dice?(rolls, 4)

      30
    end

    def large_straight(rolls)
      return 0 unless consecutive_dice?(rolls)

      40
    end

    def yahtzee(rolls)
      return 0 unless same_dice?(rolls, 5)

      50
    end

    def chance(rolls)
      rolls.sum
    end

    private

    def same_dice?(rolls, num_same_dice)
      rolls.each { |roll| return true if rolls.count(roll) == num_same_dice }

      false
    end

    def consecutive_dice?(rolls, num_consecutive = 5)
      rolls[0...num_consecutive].each_cons(2).to_a.all? { |a, b| a + 1 == b }
    end
  end

  def score
    upper_sect_score + lower_sect_score
  end
end
