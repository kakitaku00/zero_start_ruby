# initializeメソッド
# オブジェクトが作られる時にインスタンス変数にデータを持たせる
class Drink
  def initialize # => initializeという名前を定義するだけでよい
    puts "新しいオブジェクト!"
  end
end

Drink.new # => 新しいオブジェクト!

# インスタンス変数の初期値を設定する
class Drink
  def initialize
    @name = "カフェラテ"
  end
  def name
    @name
  end
end

drink = Drink.new
puts drink.name # => カフェラテ

# initializeメソッドへ引数を渡す
class Drink
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink = Drink.new("モカ")
puts drink.name # => "モカ"
# newメソッドを呼び出して引数を渡すと、initializeメソッドが呼び出されて引数として届く
class Drink
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink1 = Drink.new("カフェラテ")
drink2 = Drink.new("コーヒー")
drink3 = Drink.new("モカ")

puts drink1.name # => カフェラテ
puts drink2.name # => コーヒー
puts drink3.name # => モカ