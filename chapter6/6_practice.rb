# 6-1
menu = {coffee: 300, caffe_latte: 400}
p menu[:caffe_latte]

menu2 = {"モカ" => "チョコレートシロップとミルク入り", "カフェラテ" => "ミルク入り"}
p menu2["モカ"]

# 6-2
menu[:tea] = 300
p menu

menu.delete(:coffee)
p menu

menu.default = "紅茶はありませんか？"
menu.delete(:tea)
p menu[:tea]

if menu[:caffe_latte] <= 500
  puts "カフェラテください"
end
# 上記を1行で表示
puts "カフェラテください" if menu[:caffe_latte] <= 500

hash = {}
hash.default = 0
array = "caffelatte".chars
# p array # => ["c", "a", "f", "f", "e", "l", "a", "t", "t", "e"]
array.each do |x|
  hash[x] += 1
end
p hash

# 6-3
# menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu = {}
menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each do |str, value|
  if value >= 350
    p "#{str}-#{value}"
  end
end

result = []
menu.each_key do |key|
  result.push(key)
end
p result
#keysメソッドを使用すると簡単に取得できる
p menu.keys


# ======
# 問5模写
# ======
menu = {coffee: 300, caffe_latte: 400}
p menu[:tea] # => nil
# 存在しないとnilが返るので、nilの時に実行するunlessを使って表示
puts "紅茶はありませんか？" unless menu[:tea]
# ハッシュにはキーが存在するかどうかを調べるhas_key?メソッドを使用する
puts "紅茶はありませんか？" unless menu.has_key?(:tea)

