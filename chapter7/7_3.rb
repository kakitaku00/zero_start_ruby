# 引数を省略したデフォルト値
def order(item = "コーヒー")
  "#{item}をください"
end
puts order("カフェラテ") # => "カフェラテをください"
puts order("モカ") # => モカをください
puts order # => コーヒーをください

# 引数の順番を買えられるキーワード引数
def order(item, size)
  "#{item}を#{size}サイズでください"
end

puts order("カフェラテ", "ベンティ") # => カフェラテをベンティサイズでください
puts order("ベンティ", "カフェラテ") # => ベンティをカフェラテサイズでください ...変な文になってしまう
# キーワード引数をつかう
def order(item:, size:) # 引数の後ろに:をつけるとキーワード引数になる
  "#{item}を#{size}サイズでください"
end
puts order(item: "カフェラテ", size: "ベンティ") # => カフェラテをベンティサイズでください
puts order(size: "ベンティ", item: "カフェラテ") # => カフェラテをベンティサイズでください

# キーワード引数でのデフォルト値
def order(item:, size: "ショート")
  "#{item}を#{size}サイズでください"
end
puts order(item: "カフェラテ") # => カフェラテをショートサイズでください
puts order(item: "カフェラテ", size: "ベンティ") # => カフェラテをベンティサイズでください
