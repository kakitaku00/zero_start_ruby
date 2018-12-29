puts 1 < 2 # ture
puts 1 > 2 # false

# tureもfalesもオブジェクト
# 以上以下という意味の'>='や'<='もある(<記号が先)

puts 1 <= 2 # true
puts 2 >= 2 # true

# wallet = 500
wallet = 100
puts wallet >= 300 # 500 => ture / 100 => false

# ======================

# 等しいか判断(==)
puts 1 == 2 # false
puts 2 == 2 # true
puts 2 == 1 + 1 # true

# 等しくないか判断(!=)
puts 1 != 2 # true
puts 2 != 2 # fales

# 数値だけでなくオブジェクトも比較できる
puts "ruby" == "ruby" # true
puts "ruby" != "ruby" # false
puts "ruby" == "xxx" # false

# ======================

# 末尾に?がつくメソッド
# even?メソッドは偶数かどうか判断しture/falseを返す
puts 2.even? # true
puts 3.even? # false
# 末尾に?がつくメソッドはtrue/falseを返すことが多い
