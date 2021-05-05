class Round
  attr_reader :category, :rolls

  def initialize(category, rolls)
    @category = category
    @rolls = rolls
  end

  def upper_section?
  end
end
