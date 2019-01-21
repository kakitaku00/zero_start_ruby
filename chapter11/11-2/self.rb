# self
# selfはその場所でレシーバーを返すもの
# レシーバー = メソッドを呼び出されるオブジェクト

# クラスのインスタンスメソッドの中でselfを呼び出すとなんのオブジェクトが返るか
class Drink
  def me
    p self.object_id # => 70296141680760
  end

end

drink = Drink.new
p drink.object_id # => 70296141680760
drink.me

# クラスメソッドのself
class Drink
  def self.me
    p self.object_id # => 70323186224500
  end
end
p Drink.object_id # => 70323186224500
Drink.me

# selfはその場所でメソッドを呼び出す時のレシーバーのオブジェクトを返す
# インスタンスメソッドでのselfはそのクラスのインスタンスになる
# クラスメソッドでのselfは、そのクラスになる

