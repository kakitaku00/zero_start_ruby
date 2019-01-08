# ハッシュを繰り返し処理する
menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each do |key, value|
  puts "#{key}は#{value}円です"
end
# コーヒーは300円です
# カフェラテは400円です

# キーだけで繰り返しを行うeach_keyメソッド
menu.each_key do |key|
  puts key
end
# コーヒー
# カフェラテ

# 値だけを繰り返すeach_valueメソッド
menu.each_value do |value|
  puts value
end
# 300
# 400