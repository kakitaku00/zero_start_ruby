# どちらかの条件を満たす時　AまたはB
# 「または」== ||
wallet = 100
suica = 300
if wallet >= 300 || suica >= 300
  puts "コンビニでアイスを買って行こう！"
end
# => コンビニでアイスを買って行こう！

# 両方の条件を満たす時 AかつB
# 「かつ」== &&
wallet2 = 500
weather = "fine"
if wallet2 >= 300 && weather == "fine"
  puts "コンビニでアイスを買って行こう！"
end
# => コンビニでアイスを買って行こう！

# ==============================

# ifの条件に書けるもの
if 100
  puts "100は成立しました"
end

if "abc"
  puts "abcは成立しました"
end
# ifの条件はfalseかnilは条件を満たさず、それ以外は条件を満たす