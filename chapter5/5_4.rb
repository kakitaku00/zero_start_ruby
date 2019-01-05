# 配列の要素を並び替えるsortメソッド
p [4, 2, 8].sort # => [2, 4, 8]
# 文字列のときはabc順に並び替えられる
p ["hitomi", "achi", "tama"].sort # => ["achi", "hitomi", "tama"]
p ["aya", "achi", "tama"].sort # => ["achi", "aya", "tama"]
# 大文字が先にくる
p ["aya", "achi", "Tama"].sort # => ["Tama", "achi", "aya"]

# 配列の要素を逆順にする
p [4, 2, 8].sort.reverse # => [8, 4, 2]

# 文字列を逆順にする
p "abc".reverse # => "cba"
p "とくれせんたぼーび".reverse #=> "びーぼたんせれくと"

