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