# メソッドとは

# 配列の合計値を計算
a = [1, 2, 3]
# sumメソッド
puts = a.sum # => 6
# sumメソッドを使用せず合計値を算出
sum = 0
a.each do |x|
  sum += x
end
puts sum # => 6

# メソッドを定義する
# 辺の長さが2であるプログラムを記述
puts 2 * 2 # => 4
# メソッドを作る(メソッドを定義する)
def area
  puts 2 * 2
end
# => 何も表示されない
# メソッドは呼び出されないと実行されない
# メソッドを呼び出す
area

# メソッドの戻り値
def area
  2 + 2
end
# 戻り値4を変数に代入
result = area
puts result # => 4