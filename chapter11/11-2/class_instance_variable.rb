# クラスメソッドとインスタンスメソッドでのインスタンス変数は別物
class Drink
  def name
    @name = "カフェラテ"
  end
  def self.name
    @name
  end
end
drink = Drink.new
drink.name
p Drink.name # => nil
p drink.name # => "カフェラテ"
# それぞれのインスタンス変数は別物なので、
# クラスメソッドでは1度も代入されていないインスタンス変数を表示するのでnilとなる