# クラスにメソッドを定義する
class Drink
  def name
    "カフェラテ"
  end
end

# クラスに定義したメソッドを呼び出す
class Drink
  def name
    "カフェラテ"
  end
end

drink = Drink.new # Drinkクラスのオブジェクトを作り、drinkへ代入
puts drink.name # => カフェラテ

# methodsメソッド
# p drink.methods
# => [:name, ...] さっき追加したnameメソッドがある

# クラスに引数を受け取るメソッドを定義する
class Drink
  def order(name)
    puts "#{name}をください"
  end
end

drink = Drink.new
drink.order("カフェラテ") # => カフェラテをください

# クラスの中で同じクラスのメソッドを呼び出す
class Drink
  def name
    "モカ" + topping
  end
  def topping
    "エスプレッソショット"
  end
end

drink = Drink.new
puts drink.name # => モカエスプレッソショット

# selfを使ってレシーバーを調べる
# selfはその場所で呼び出した時のレシーバーを返す
class Drink
  def name
    p self # => selfでレシーバーを取得
    "モカ" + topping # = メソッド形式だとself.topping
  end
  def topping
    "エスプレッソショット"
  end
end

drink = Drink.new
p drink # => #<Drink:0x00007fb89d020348>
puts drink.name # => p selfで取得したレシーバー #<Drink:0x00007fb89d020348>
