class Round
  attr_reader :category, :rolls

  UPPER_SECTION = [:ones, :twos, :threes, :fours, :fives, :sixes]
  LOWER_SECTION = [:three_of_a_kind, :four_of_a_kind, :full_house, :small_straight, :large_straight, :yahtzee, :chance]

  CATEGORIES = {
    # Upper section
    ones: "ones",
    twos: "twos",
    threes: "threes",
    fours: "fours",
    fives: "fives",
    sixes: "sixes",
    # Lower section
    three_of_a_kind: "three of a kind",
    four_of_a_kind: "four of a kind",
    full_house: "full house",
    small_straight: "small_straight",
    large_straight: "large_straight",
    yahtzee: "yahtzee",
    chance: "chance",
  }.freeze

  def initialize(category, rolls)
    @category = category
    @rolls = rolls
  end

  def upper_section?
  end

  def lower_section?
  end
end
