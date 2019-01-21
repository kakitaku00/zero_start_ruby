# 例外の有無に関わらず必ず処理を実行するensure
# 年齢から成年か未成年かを判定するメソッド
def type(age)
  if age < 0
    raise "年齢がマイナスです(#{age}才)"
  elsif age < 20
    "未成年"
  else
    "成年"
  end
end

begin
  # 例外が発生する可能性のある処理
  age = ARGV.first.to_i
  puts "#{age}才は#{type(age)}です"
rescue => e
  # 例外が発生したときに実行する処理
  puts "例外が発生しました: #{e.message}"
ensure
  # 例外の発生有無に関わらず実行される処理
  puts "ご利用ありがとうございました"
end

# $ ruby 11_1_ensure.rb 18
# 18才は未成年です
# ご利用ありがとうございました

# $ ruby 11_1_ensure.rb -5
# 例外が発生しました: 年齢がマイナスです(-5才)
# ご利用ありがとうございました