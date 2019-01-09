# 引数を使ってオブジェクトを渡せるメソッドを定義
def area(x)
  x * x
end
puts area(2) # => 4
puts area(3) # => 9

# 2つ以上の引数を持つメソッドを定義する
def area(x, y)
  x * y
end
puts area(2, 3) # => 6

# メソッドを途中で終わらせるreturn
def thanks_and_receipt
  puts "ありがとうございます"
  puts "こちら、レシートになります"
end
thanks_and_receipt
# ありがとうございます
# こちら、レシートになります

# returnを使用し途中で終わらせる
def thanks_and_receipt
  puts "ありがとうございました"
  return
  puts "こちら、レシートになります"
end
thanks_and_receipt
# ありがとうございました

# returnをどうするか引数によって切り替える
def thanks_and_receipt(receipt)
  puts "ありがとうございました。"
  # receiptがfalseのときに次の行を実行
  unless receipt
    return
  end
  puts "こちらレシートになります。"
end
thanks_and_receipt(false)
# ありがとうございました。

# returnに戻り値を設定する
def thanks_and_receipt(receipt)
  greeting = "ありがとうございました。"
  unless receipt
    return greeting
  end
  greeting + "こちら、レシートになります。"
end
puts thanks_and_receipt(true) # => ありがとうございました。こちら、レシートになります。
puts thanks_and_receipt(false) # => ありがとうございました。
