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

if menu[:caffe_latte] < 500
  puts "カフェラテください"
end

text = "caffelatte".chars
# p text # => ["c", "a", "f", "f", "e", "l", "a", "t", "t", "e"]
hash = {}
text.each do |key|
  hach = hash[:text[key]]
end
p hash