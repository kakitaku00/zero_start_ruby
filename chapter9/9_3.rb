# 別ファイルのクラスやモジュールを読み込む
# whipped_creamファイルからモジュールを読み込む
# require_relativeメソッドの引数に文字列でファイル名を記述(.rbは省略可)
require_relative "whipped_cream"
class Drink
  include WhippedCream
  def name
    @name
  end
  def initialize
    @name = "モカ"
  end
end

mocha = Drink.new
mocha.whipped_cream
puts mocha.name

# includeとrequier_relativeの違い
# includeはモジュール名を渡してそのモジュールに書かれたメソッドをクラスから利用できるようにするメソッド
# require_relariveはファイル名を渡してそのファイルに定義されたクラスやモジュールを使えるようにするメソッド
