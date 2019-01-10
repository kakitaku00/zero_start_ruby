# 7-1
def order
  puts "カフェラテをください"
end
order

# 7-2
def area
  3 * 3
end
result = area
puts result

def dice
  [1, 2, 3, 4, 5, 6].sample
end
result = dice
puts result

# 7-3
def order(item)
  puts "#{item}をください"
end
order("カフェラテ")
order("モカ")

def dice2
  num = [1, 2, 3, 4, 5, 6].sample
  p num
  if num == 1
    puts "もう一回"
    return dice2
  end
end
dice2

# 7-4
def price(item, size = "ショート")
  price = 0
  if item == "コーヒー"
    price += 300
  end
  if item == "カフェラテ"
    price += 400
  end
  case size
    when "ショート" then
    return price
    when "トール" then
    return price += 50
    when "ベンティ" then
    return price += 100
  end
end
puts price("コーヒー")
puts price("カフェラテ")
puts price("カフェラテ", "ベンティ")

# 7-5
def order(drink)
  puts "#{drink}をください"
end

drink = "コーヒー"
order(drink)

# ======================

# 問5模写
def dice
  result = [1, 2, 3, 4, 5, 6].sample
  # 1以外なら結果を返す
  return result unless result == 1
  puts "もう一回"
  [1, 2, 3, 4, 5, 6].sample
end

puts dice

# 問6模写
def price(item:)
  items = { "コーヒー" => 300, "カフェラテ"  => 400}
  items[item]
end
puts price(item: "コーヒー")
puts price(item: "カフェラテ")

# 問7模写
def price(item: ,size: "ショート")
  items = { "コーヒー" => 300, "カフェラテ"  => 400}
  sizes = { "ショート" => 0, "トール" => 50, "ベンティ" => 100}
  items[item] + sizes[size]
end
puts price(item: "コーヒー", size: "トール")