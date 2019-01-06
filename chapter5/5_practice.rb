# 5-1
p ["コーヒー", "カフェラテ"].size
p [1, 2, 3, 4, 5].sum

# 5-2
p ["モカ", "カフェラテ", "モカ"].uniq
arr = ["モカ", "カフェラテ", "モカ"]
p arr.clear

# 5-3
p ["カフェラテ", "モカ", "カプチーノ"].sample
p ["大吉", "中吉", "末吉", "凶"].sample

# 5-4
p [100, 50, 300].sort
p [100, 50, 300].sort.reverse
p "cba".reverse

# 5-5
p ["100", "50", "300"].join(",")
p "100,50,300".split(",")

# 5-6
p [1, 2, 3].map { |x| x * 3 }
p ["abc", "xyz"].map { |str| str.reverse }

name = ["aya", "achi", "Tama"].map do |str|
  str.downcase
end
name = name.sort
p name