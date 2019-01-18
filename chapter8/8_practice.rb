# 8-1
hash = {:coffee => 300, :caffe_latte => 400}
p hash.class

hash2 = Hash.new
p hash2

# 8-2
class CaffeLatte
end

caffe_latte = CaffeLatte.new
p caffe_latte.class

# 8-3
class Item
  def name
    "チーズケーキ"
  end
end

item = Item.new
p item.name

# 8-4
class Item
  def name=(item)
    @name = item
  end
  def name
    @name
  end
end

item = Item.new
item.name = "チーズケーキ"
p item.name

# 8-5
class Item2
  def initialize
    p "商品を扱うオブジェクト"
  end
end

item = Item2.new

class Item3
  def initialize(item)
    @name = item
  end
  def name
    @name
  end
end

item_a = Item3.new("マフィン")
item_b = Item3.new("スコーン")
p item_a.name
p item_b.name

# 8-6
class Drink
  def self.todays_special
    "ホワイトモカ"
  end
end

p Drink.todays_special

# 8_7
class Item4
  def name
    @name
  end
  def name=(text)
    @name = text
  end
end

class Food < Item4
end

food = Food.new
food.name = "チーズケーキ"
p food.name


# 8-1
p ({:coffee => 300, :caffe_latte => 400}).class
p Hash.new