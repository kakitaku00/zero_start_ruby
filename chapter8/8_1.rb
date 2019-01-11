# クラス
# オブジェクトはクラスに属している
p 1.class # => Integer
p 2.class # => Integer
p 100.class # => Integer

p "カフェラテ".class # => String
p "hello".class # => String
p "".class # => String

p [1, 2, 3].class # => Array
p ["コーヒー", "カフェラテ"].class # => Array
p [].class # => Array

# クラスに属するオブジェクトを、そのクラスの「インスタンス」であるともいう
p 1.even? # => false
p 2.even? # => true
p 100.even? # => true
p "カフェラテ".even? # => error

# オブジェクトを作る2つの方法
# クラスとnewメソッドを使ってオブジェクトを作る
p String.new # => ""
p String.new("カフェラテ") # => "カフェラテ"
p Array.new # => []
p Array.new(2, "カフェラテ") # => ["カフェラテ", "カフェラテ"]