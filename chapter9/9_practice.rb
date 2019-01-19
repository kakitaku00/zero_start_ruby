# 9-1
module ChocolateChip
  def chocolate_chip
    @name += "チョコレートチップ"
  end
end

class Drink
  include ChocolateChip
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink = Drink.new("モカ")
drink.chocolate_chip
puts drink.name

# 9-2
module EspressoShort
  Price = 100
end

p EspressoShort::Price

# 9-3
require_relative "whipped_cream2"
puts WhippedCream.info