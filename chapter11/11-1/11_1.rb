# 例外とは

# 割り勘プログラム
# puts "金額を入力してください"
# bill = gets.to_i
# puts "割り勘する人数を入力してください"
# number = gets.to_i

# warikan = bill / number
# puts "１人あたり#{warikan}円です"
# 金額を入力してください
# 100
# 割り勘する人数を入力してください
# 4
# １人あたり25円です

# 人数を0にした場合
# 金額を入力してください
# 100
# 割り勘する人数を入力してください
# 0
# Traceback (most recent call last):
#         1: from 11_1.rb:9:in `<main>'
# 11_1.rb:9:in `/': divided by 0 (ZeroDivisionError)

# 例外を処理する
# 例外は想定外の問題が起きた時に発生する
# 想定外の問題なのでエラーメッセージを表示し、プログラムを停止させる
# 処理するためにbefin~rescueを使用
puts "金額を入力してください"
bill = gets.to_i
puts "割り勘する人数を入力してください"
number = gets.to_i

begin
  warikan = bill / number
  puts "1人あたり#{warikan}円です"
rescue ZeroDivisionError
  # ZeroDivisionError例外が発生したらメッセージを表示する
  puts "おっと、0人では割り勘できません"
end
# 金額を入力してください
# 100
# 割り勘する人数を入力してください
# 0
# おっと、0人では割り勘できません

# メソッド内で例外処理を書く場合、befinとendを省略できる
def warikan(bill, number)
  warikan = bill / number
  puts "1人あたり#{warikan}円です"
rescue
  # ZeroDivisonError例外が発生したらメッセージを表示する
  puts "おっと、0人では割り勘できません"
end

warikan(100, 0) # => おっと、0人では割り勘できません
warikan(100, 1) # => 1人あたり100円です
warikan(100, 2) # => 1人あたり50円です

# Ruby2.5以降ではブロック内でもbeginとendを省略できる
bill = 100
number = [0, 1, 2]

number.each do |number|
  warikan = bill / number
  puts "1人あたり#{warikan}円です"
rescue ZeroDivisionError
  puts "おっと、0人では割り勘できません"
end
# おっと、0人では割り勘できません
# 1人あたり100円です
# 1人あたり50円です

# 例外の詳しい情報を得る
# => 11_1_cat.rb

# 例外を発生させるraiseメソッド
# => 11_1_raise.rb