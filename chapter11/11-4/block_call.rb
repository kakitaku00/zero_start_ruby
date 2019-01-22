# 渡されたブロックを引数で受けとる
# 変数に代入されたブロックはcallメソッドで実行できる

def foo(&b) # 引数bは先頭に&がついているので、ブロックを受け取って代入される
  b.call # 渡されたブロックを実行
end

# fooメソッドをブロックを渡して呼び出し
foo do
  puts "Chunky Bacon!!" # => Chunky Bacon!!
end

# プログラムをまとめたものであるブロックは変数に代入できる
# この時ブロックをProcというオブジェクトで扱っている
def foo(&b)
  p b.class # => Proc
end

foo do
  "block"
end