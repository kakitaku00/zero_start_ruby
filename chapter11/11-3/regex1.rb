# 正規表現
# 文字列を含むか判断する
p "カフェラテ".match?(/ラテ/) # => true
p "ティーラテ".match?(/ラテ/) # => true
p "モカ".match?(/ラテ/) # => false

# 文字列が条件と合致するか判定する
p "カフェラテ".match?(/ラテ\z/) # => true
p "ティーラテ".match?(/ラテ\z/) # => true
p "モカ".match?(/ラテ\z/) # => false
# \zは文字列末尾にマッチするか判定する

p "カフェラテ".match?(/\Aラテ/) # => false
p "ティーラテ".match?(/\Aラテ/) # => false
p "ラテアート".match?(/\Aラテ/) # => true
# \Aは先頭がラテで始まるか判定

# その他
# . = 任意の1文字にマッチ
p "abc".match?(/a.c/) # => true
p "abbbc".match?(/a.c/) # => false
p "ac".match?(/a.c/) # => false
p "adc".match?(/a.c/) # => treu

# * = 前の文字が0回以上繰り返す時にマッチする
p "abc".match?(/ab+c/) # => true
p "abbbc".match?(/ab+c/) # => true
p "ac".match?(/ab+c/) # => false

# + = 前の文字が1回以上繰り返す時にマッチする
p "abc".match?(/a.+c/) # => true
p "abbbc".match?(/a.+c/) # => true
p "ac".match?(/a.+c/) # => false

# 条件と合致するものを抽出する
# match?とifを組み合わせる
["カフェラテ", "モカ", "コーヒー"].each do |drink|
  puts drink if drink.match?(/ラテ/)
end
# => カフェラテ

# 条件と合致する文字列を置換する
# gsubメソッドを使うと、文字列の中で条件と合致する部分を置き換えることができる
p "カフェラテ".gsub("カフェ", "ティー") # => "ティーラテ"
p "ラテラテ".gsub(/\Aラテ/, "カフェ") # => "カフェラテ"
p "ラテラテ".gsub(/ラテ/, "カフェ") # => "カフェカフェ"