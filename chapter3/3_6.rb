# 決まった回数繰り返す timesメソッド
3.times do
  puts "カフェラテ"
end
# カフェラテ
# カフェラテ
# カフェラテ
# doとendのセットは「ブロック」と呼ばれ、処理の塊を記述する
# ブロックではdoを記述することに気をつける

# 複数行の処理もできる
3.times do
  puts "カフェオレ"
  puts "お願いします"
end
puts "注文は以上です"
# お願いします
# カフェオレ
# お願いします
# カフェオレ
# お願いします
# 注文は以上です

# =======================

# do end の代わりに{と}を使う
3.times {
  puts "コーヒー"
}
# コーヒー
# コーヒー
# コーヒー

# 複数行で記述するときはdoとendを使用し、1行のときは{と}を使用する
3.times do
  puts "カフェモカ"
  puts "ください"
end
3.times { puts "カフェラテください" }

# =======================

# 条件付き繰り返し　while
# 条件を満たす間処理を繰り返し続ける
biscuit = 0
while biscuit < 2
  biscuit += 1
  puts "ポケットを叩くとビスケットが#{biscuit}つ"
end
# ポケットを叩くとビスケットが1つ
# ポケットを叩くとビスケットが2つ
# n.timesと違いdoは記述しない


