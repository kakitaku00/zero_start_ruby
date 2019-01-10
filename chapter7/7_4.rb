# ローカル変数とスコープ
# 変数の見える範囲の実践
def hello
  text = "こんにちは"
  p text
end

hello # => "こんにちは"

# heloメソッド内変数textを、メソッドの外で使用
def hello
  text = "こんにちは"
end

hello
p text
# 7_4.rb:16:in `<main>': undefined local variable or method `text'for main:Object (NameError)

# メソッドで定義されたローカル変数をメソッド内で使用
text = "こんばんは"

def hello
  p text
end

hello
# 7_4.rb:16:in `<main>': undefined local variable or method `text'for main:Object (NameError)

# メソッド内で必要なオブジェクトは引数を使って渡す