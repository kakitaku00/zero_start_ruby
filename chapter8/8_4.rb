# インスタンス変数
class Drink
  def order(item)
    puts "#{item}をください"
    name = item
  end
  def reorder
    puts "#{name}をもう1杯ください"
  end
end

drink = Drink.new
drink.order("カフェラテ") # => カフェラテをください
# drink.reorder
# Traceback (most recent call last):
#         1: from 8_4.rb:14:in `<main>'
# 8_4.rb:8:in `reorder': undefined local variable or method `name' for #<Drink:0x00007fa130099da8> (NameError)
# nameは定義されていない変数またはメソッドですと表示されている
# このエラーはローカル変数nameのスコープに起因している

# ローカル変数より広いスコープを持つインスタンス変数を利用して解決する
# インスタンス変数 = インスタンス(オブジェクト)が持つ変数
class Drink
  def order(item)
    puts "#{item}をください"
    @name = item
  end
  def reorder
    puts "#{@name}をもう１杯ください"
  end
end

drink = Drink.new
drink.order("カフェラテ")
drink.reorder # => カフェラテをもう１杯ください
# Drink.newで作られたオブジェクトがインスタンス変数@nameの持ち主

# インスタンス変数はオブジェクトごとに存在する
class Drink
  def order(item)
    puts "#{item}をください"
    @name = item
  end
  def reorder
    puts "#{@name}をもう1杯ください"
  end
end

drink1 = Drink.new
drink2 = Drink.new
drink1.order("カフェラテ") # => カフェラテをください
drink2.order("モカ") # => モカをください
drink1.reorder # => カフェラテをもう1杯ください
drink2.reorder # => モカをもう1杯ください

# インスタンス変数を取得するメソッドを作る
class Drink
  def order(item)
    puts "#{item}をください"
    @name = item
  end
end

drink = Drink.new
drink.order("カフェラテ")
# ここでdrinkオブジェクトの@nameを取得したい
# Drinkクラスに@nameを戻り値とするメソッドを定義し、それを呼び出す
class Drink
  def order(item)
    puts "#{item}をください"
    @name = item
  end
  def name
    @name
  end
end

drink = Drink.new
drink.order("カフェラテ")
puts drink.name # => カフェラテ

# インスタンス変数へ代入するメソッドを作る
class Drink
  # インスタンス変数へ代入するメソッドは慣習的にインスタンス変数名から@を取り、
  # 末尾に=を加えたものにすることが多い
  # 「name=」がメソッド名
  def name=(text)
    @name = text
  end
  def name
    @name
  end
end

drink = Drink.new
drink.name= "カフェオレ"
puts drink.name # => カフェオレ

# instance_variablesメソッド
# オブジェクトに対しinstance_variablesメソッドを呼び出すと、持っている全てのインスタンス変数を返す
class Drink
  def order(item)
    @name = item
  end
end

drink = Drink.new
drink.order("カフェラテ")
p drink.instance_variables # => [:@name]
# インスタンス変数は代入した時に作られる為、drink.order()を実行しないと、
# instance_variablesメソッドが返すインスタンス変数一覧に@nameが現れない