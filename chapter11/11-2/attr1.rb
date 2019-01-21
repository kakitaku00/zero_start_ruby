# インスタンス変数を簡単に操作する
class Drink
  def name
    @name
  end
  def name=(text)
    @name = text
  end
end

drink = Drink.new
drink.name = "カフェラテ"
p drink.name # => "カフェラテ"

# attr_readerは同名のインスタンス変数を戻り値とするメソッドを定義するメソッド
class Drink
  attr_reader :name
  def name=(text)
    @name = text
  end
end

drink = Drink.new
drink.name = "カフェラテ"
p drink.name # => "カフェラテ"

# attr_writerは同名のインスタンス変数へ代入するメソッドを定義するメソッド
class Drink
  attr_reader :name
  attr_writer :name
end

drink = Drink.new
drink.name = "カフェラテ"
p drink.name # => "カフェラテ"

# attr_readerとattr_writerを合体させたメソッドattr_accessorメソッド
class Drink
  attr_accessor :name
end

drink = Drink.new
drink.name = "カフェラテ"
p drink.name # => "カフェラテ"