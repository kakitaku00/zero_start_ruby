# 例外を発生させるraiseメソッド
# 成年か未成年を判断するプログラム
def type(age)
  if age < 0
    # ageがマイナス値のときは例外を発生させる
    raise "年齢がマイナスです (#{age}才)"
  elsif age < 20
    "未成年"
  else
    "成年"
  end
end

age = ARGV.first.to_i
type = type(age)
puts "#{age}才は#{type}です"

# $ ruby 11_1_raise.rb -5
# Traceback (most recent call last):
#         1: from 11_1_raise.rb:15:in `<main>'
# 11_1_raise.rb:6:in `type': 年齢がマイナスです (-5才) (RuntimeError)

# resucue節を記述していないので例外は捕捉されずプログラムが終了する
# puts "#{age}才は#{type}です"は実行されない