# クラスでのメソッド定義の中だけで呼び出せるメソッドを作る
class Cafe
  def staff
    makanai
  end
  def makanai
    "店員用スペシャルメニュー"
  end
end

cafe = Cafe.new
puts cafe.staff # => 店員用スペシャルメニュー
puts cafe.makanai # => 店員用スペシャルメニュー
# cafe.makanaiメソッドで呼び出せないように制限する
class Cafe
  def staff
    makanai
  end
  private # 以降定義するメソッドはprivateなメソッドとなる
  def makanai
    "店員用スペシャルメニュー"
  end
end

cafe = Cafe.new
puts cafe.staff # => 店員用スペシャルメニュー
# puts cafe.makanai # => 8_8.rb:27:in `<main>': private method `makanai' called for #<Cafe:0x00007fab2f0516a8> (NoMethodError)
# privateなメソッドはレシーバーを書かない状態で呼び出せる
# 結果メソッドを呼び出すことができる場所をクラス定義の中だけに限定できる

# privateとpublic
class Foo
  def a # => public
  end
  def b # => public
  end

  private

  def c # => private
  end
  def d # => private
  end

  public

  def e # => pubril
  end
end

# privateをメソッドを定義するdefの前に書くとそのメソッドだけprivateにできる
class Foo
  private def a # => private
  end

  def b # => public
  end
end

# privateなクラスメソッドを定義する
# self.メソッド名でクラスメソッドを定義できるが、この前にprivateを書いておいてもprivateなメソッドにならない
class Foo
  private
  def self.a
    "metod a"
  end
end
p Foo.a # => "metods a"
# 替わりにメソッド定義のdefの前にprivate_class_methodと書く
class Foo
  private_class_method def self.a
    "method a"
  end
end
# p Foo.a # => 8_8.rb:75:in `<main>': private method `a' called for Foo:Class(NoMethodError)