# 継承
# 商品を扱うItemクラスを作成
# class Item
#   def name
#     @name
#   end
#   def name=(text)
#     @name = text
#   end
# end

# ドリンクを扱うDrinkクラスを作成
# class Drink
#   def name
#     @name
#   end
#   def name=(text)
#     @name = text
#   end
#   def siza
#     @size
#   end
#   def size=(text)
#     @size = text
#   end
# end

# ItemクラスとDrinkクラスのnameメソッドとname=メソッドは同じ
# またDrinkはItemの１種類という関係
# このような時は「継承」のしくみをつかう
class Item
  def name
    @name
  end
  def name=(text)
    @name = text
  end
end

class Drink < Item
  def size
    @size
  end
  def size=(text)
    @size = text
  end
end

item = Item.new
item.name = "マフィン"

drink = Drink.new
drink.name = "カフェオレ"
drink.size = "tall"
puts "#{drink.name} #{drink.size}サイズ"

# Rubyが用意しているクラスたちの継承関係
# クラスの継承関連を見るancestorsメソッド
p Integer.ancestors
# => [Integer, Numeric, Comparable, Object, Kernel, BasicObject]
p Array.ancestors
# => [Array, Enumerable, Object, Kernel, BasicObject]
p Class.ancestors
# => [Class, Module, Object, Kernel, BasicObject]

# 親子クラスで同名のメソッドを作った時の動作
class Item
  def name
    @name
  end
  def name=(text)
    @name = text
  end
  def full_name
    @name
  end
end

class Drink < Item
  def size
    @size
  end
  def size=(text)
    @size = text
  end
  def full_name
    "#{@name} #{@size}サイズ"
  end
end

drink = Drink.new
drink.name = "カフェオレ"
drink.size = "tall"
puts drink.full_name # => カフェオレ tallサイズ
# 同名のメソッドがある際は自分のメソッドが呼ばれる

# 親クラスのメソッドを呼び出す-super
# Drinkクラスで親クラスItemのfull_nameメソッドを呼び出す
class Item2
  def name
    @name
  end
  def name=(text)
    @name = text
  end
  def full_name
    @name
  end
end

class Drink2 < Item2
  def size
    @size
  end
  def size=(text)
    @size = text
  end
  def full_name
    #Drink2クラスのfull_nameメソッドを呼び出す
    super
  end
end

drink = Drink2.new
drink.name = "カフェオレ"
drink.size = "tall"
puts drink.full_name # => カフェオレ

