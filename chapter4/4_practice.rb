# 4-1
p ["コーヒー", "カフェラテ"]

# 4-2
drinks = ["コーヒー", "カフェラテ", "モカ"]
puts drinks[1]
puts drinks.first
puts drinks.last

# 4-3
p ["コーヒー", "カフェラテ"].push("モカ")
p [2, 3].unshift(1)
p [1, 2] + [3, 4]

drinks = ["ティーラテ", "カフェラテ", "抹茶ラテ"]
drinks.each do |drink|
  puts "#{drink}お願いします"
end

a = [1, 2, 3]
sum = 0
a.each do |x|
  sum += x
end
puts sum

[].each do |drink|
  puts drink
end

# =======================
# 総和を求めるメソッドsum
b = [1, 2, 3, 4]
puts b.sum # => 10