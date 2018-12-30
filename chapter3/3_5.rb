# 複数条件から1つ選ぶ case
order = "モカ"
case order
when "カフェラテ"
  puts "300円です"
when "モカ"
  puts "350円です"
end
# => 350円です

# 合致するものがない時の処理
next_order = "パフェ"
case next_order
when "カフェラテ"
  puts "300円です"
when "モカ"
  puts "350円です"
else
  puts "取り扱っていません"
end
# => 取り扱っていません

# 三択以上の選択肢がある際caseを用いると良い

# caseに変数を指定しない場合
wallet = 300
case
when wallet >= 500
  puts "モカにホイップをトッピング"
when wallet >= 300
  puts "カフェラテ"
end
# => カフェラテ