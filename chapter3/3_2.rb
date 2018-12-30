# if 条件
#    条件が成立した時の処理
# end

wallet = 500
if wallet >= 300
  puts "コンビニでアイスを買って行こう！"
end
# => コンビニでアイスを買って行こう！

# ========================
# 後置if
puts "コンビニでアイスを買って行こう！" if wallet >= 300
# ifからendまでを一行で書ける

# ========================
# 条件を満たさない時
wallet2 = 100
if wallet2 >= 300
  puts "コンビニでアイスを買って行こう！"
end
# => 何も実行されない

# ========================
# 等しくないを使用する
x = 200
if x != 100
  puts "100ではありません"
end
# => 100ではありません

# unlessを使用しても同じ結果が得られる
y = 300
unless y == 100
  puts "100ではありません"
end

# ========================
# !を使ってunlessとifを反転させることもできる
x = false
unless x # xがtrueではない時条件式を実行
  puts "unless: xはfalseです"
end
if !x # xがtrueではない時条件式を実行
  puts "if: xはfalseです"
end
# => unless: xはfalseです
# => if: xはfalseです


