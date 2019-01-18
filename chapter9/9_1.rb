# モジュールを作る
module WhippedCream
end

# モジュールにメソッドを定義する
module WhippedCream
  def whipped_cream
    @name += "ホイップクリーム"
  end
end

# モジュールのメソッドをクラスで使う
class Drink
  # includeメソッドでモジュールを指定し、クラスにモジュールをインクルードする
  include WhippedCream
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink = Drink.new("モカ")
drink.whipped_cream
puts drink.name # => モカホイップクリーム

# 上記の流れをmoduleを使わずに記述するとこうなる
class Drink
  def whipped_cream
    @name += "ホイップクリーム"
  end
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink = Drink.new("モカ")
drink.whipped_cream
puts drink.name # => モカホイップクリーム

# モジュールは複数のクラスで共同利用できる

module WhippedCream
  def whipped_cream
    @name += "ホイップクリーム"
  end
end

class Drink
  include WhippedCream
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

class Cake
  include WhippedCream
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink = Drink.new("モカ")
drink.whipped_cream
puts drink.name # => "モカホイップクリーム"

cake = Cake.new("テョコレートケーキ")
cake.whipped_cream
puts cake.name # => チョコレートケーキホイップクリーム

# モジュールのメソッドをクラスメソッドにする
# extendメソッドをクラスで使うとモジュールのメソッドをクラスメソッドとして使うことができる
module Greeting
  def welcome
    "いらっしゃいませ！"
  end
end
class Cafe
  extend Greeting # => いらっしゃいませ！
end
puts Cafe.welcome