# 渡されたブロックを実行する
# ブロックが渡されたかどうかをblock_given?メソッドで調べる

def foo
  p block_given?
end

foo # => false

foo do
end # => true

# メソッド定義に何も書かなくてもブロックを渡すメソッド呼び出しをすることができる

# 渡したブロックを実行する
# yieldを実行すると渡したブロックを実行する

def dice
  if block_given? # ブロックが渡されたか
    # ブロックが渡された時の処理
    puts "run block"
    yield # 渡されたブロックを実行
  else
    # ブロックが渡されなかった時の処理
    puts "normal dice"
    puts [1, 2, 3, 4, 5, 6].sample
  end
end

# ブロックを渡さない時
dice

# ブロックを渡すとき
dice do
  puts [4, 5, 6].sample
end

# yieldを使うとメソッドの中で実行する処理をメソッド呼び出し元にブロックで書くことができる
