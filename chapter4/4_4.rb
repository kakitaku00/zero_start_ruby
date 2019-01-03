# 配列を繰り返し処理する
drinks = ["コーヒー", "カフェラテ"]
drinks.each do |drink|
  puts drink
end
# コーヒー
# カフェラテ
# eachメソッドと、doとendのブロックを使用する
# eachメソッドを使用せず同じ結果を表示させる場合
puts drinks[0]
puts drinks[1]
# 上記だと配列が増えた場合行数が増える

# 配列を途中で終わらせるbreak
[1, 2, 3].each do |x|
  # 2の時に処理を終わらせる
  break if x == 2
  puts x
end
# 1

# 繰り返しの次の回へ進むnext
[1, 2, 3].each do |x|
  next if x == 2
  puts x
end
# 1
# 3

# 範囲を指定して繰り返す
(3..5).each do |x|
  puts x
end
# 3
# 4
# 5
