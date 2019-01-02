# 配列の要素を取得
drinks = ["コーヒー", "カフェラテ"]
# 変数の後ろに[n]をつけることで、配列のn番目の要素を取得
puts drinks[0] # => "コーヒー"
puts drinks[1] # => "カフェラテ"
# -をつけると後ろから
puts drinks[-1] # => "カフェラテ"
puts drinks[-2] # => "コーヒー"

# 配列の先頭と末尾を取得するメソッド
puts drinks.first # => "コーヒー"
puts drinks.last # => "カフェラテ"

# 何もないことを表すオブジェクトnil
puts drinks[2] # => nil

# オブジェクトから直接呼び出す
p ["コーヒー", "カフェラテ"].first # => "コーヒー"
