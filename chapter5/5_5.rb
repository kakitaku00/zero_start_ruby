# 配列中の文字列を連結するjoinメソッド
# ["カフェラテ", "チーズケーキ", "バニラアイス"]の間に「と」を挿入したい
# eachメソッドで繰り返し挿入する
order = ""
["カフェラテ", "チーズケーキ", "バニラアイス"].each do |item|
  order = order + item + "と"
end
puts order
# => カフェラテとチーズケーキとバニラアイスと
# joinメソッドを使用すると綺麗に実装できる
# 基本的な使い方
puts ["カフェラテ"].join # => カフェラテ
puts ["カフェラテ", "チーズケーキ"].join # => カフェラテチーズケーキ
puts ["カフェラテ", "チーズケーキ" , "バニラアイス"].join # => カフェラテチーズケーキバニラアイス
# 配列の要素と連結して1つの文字列にする
# 各要素の間に「と」を挿入する
puts ["カフェラテ"].join("と") # => カフェラテ
puts ["カフェラテ", "チーズケーキ" , "バニラアイス"].join("と") # => カフェラテとチーズケーキとバニラアイス
# joinメソッドに"と"を引数として渡している

# 文字列を分割して配列にするsplitメソッド
# スペースを区切り文字として文字列に分割
p "カフェラテ チーズケーキ バニラアイス".split # =>["カフェラテ", "チーズケーキ", "バニラアイス"]

