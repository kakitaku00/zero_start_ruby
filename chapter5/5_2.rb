p [1, 1, 1].uniq # => [1]
p [1, 4, 1].uniq # => [1, 4]
p [1, 3, 2, 2, 3].uniq # => [1, 3, 2]

array1 = [1, 1, 2]
array2 = array1.uniq!
p array1 # => [1, 2]
p array2 # => [1, 2]
# uniq!メソッドは自分自身の配列オブジェクトを変更する(破壊的変更)

# 新しいオブジェクトが作られたか破壊的に変更されたか調べるobject_idメソッド
array3 = [1, 1, 2]
array4 = array3.uniq!
p array3.object_id # => 70145280372380
p array4.object_id # => 70145280372380 IDが同じ

array5 = [1, 1, 2]
array6 = array5.uniq
p array5.object_id # => 70358120115020
p array6.object_id # => 70358120114980 IDが違う

# uniq => 新しいオブジェクトをつくる
# uniq! => 元のオブジェクトを書き換える

# メソッドにブロックを渡す
p [1, 3, 2, "2", "3"].uniq # => [1, 3, 2, "2", "3"]
p [1, 3, 2, "2", "3"].uniq { |n| n.to_s} #=> [1, 3, 2]