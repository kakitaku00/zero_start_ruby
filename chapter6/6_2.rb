# ハッシュへキーと値の組みを追加する
menu = {coffee: 300, cafe_latte: 400}
menu[:moca] = 400
p menu # => {:coffee=>300, :cafe_latte=>400, :moca=>400}
# ハッシュはキーを指定して値を取得する為、順番を意識することはあまりない

# ハッシュは同じキーを複数持てない
menu2 = {coffee: 300, cafe_latte: 400}
menu2[:coffee] = 350
p menu2 # => {:coffee=>350, :cafe_latte=>400} 上書きされる

# 存在しないキーを指定
p menu[:tea] # => nil
# 存在しないキーを指定したときの値をdefault=メソッドで設定することができる
menu3 = {coffee: 300, cafe_latte: 400}
menu3.default = 0 # キーがない時の値を指定
p menu3[:tea] # => 0

# 2つのハッシュを1つにまとめるmergeメソッド
coffee_menu = {coffee: 300, cafe_latte: 400}
tea_menu = {tea: 300, tea_latte: 400}
menu4 = coffee_menu.merge(tea_menu)
p menu4 # => {:coffee=>300, :cafe_latte=>400, :tea=>300, :tea_latte=>400}

# ハッシュからキーと値の組みを削除するdeleteメソッド
menu5 = {coffee: 300, cafe_latte: 400}
menu5.delete(:cafe_latte)
p menu5 # => {:coffee=>300}