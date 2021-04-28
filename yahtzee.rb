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
    end

    def four_of_a_kind(rolls)
    end

    def full_house(rolls)
    end

    def small_straight
    end

    def large_straight
    end

    def yahtzee(rolls)
    end

    def chance(rolls)
    end

  def score
    upper_sect_score + lower_sect_score
  end
end
