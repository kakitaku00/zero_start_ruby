require "net/http" # 標準ライブラリnet/httpを読み込む
require "uri" # 標準ライブラリuriを読み込む
uri = URI.parse("https://example.com/") # URIモジュールを使う
# puts Net::HTTP.get(uri) # Net::HTTPクラスを使う

# WebページへアクセスしてJSONを取得する
# JSON = データを目的とした形式
uri = URI.parse("https://igarashikuniaki.net/example.json")
p result = Net::HTTP.get(uri)
# => "{\"caffe latte\":400}\n"
# Net::httpで取得したのはJSON形式の文字列
# 標準ライブラリjsonを使うとハッシュに変換できる
require "json"

uri = URI.parse("https://igarashikuniaki.net/example.json")
result2 = Net::HTTP.get(uri)
hash = JSON.parse(result2) # JSONからハッシュへ変換
p hash
p hash["caffe latte"]
# {"caffe latte"=>400}
# 400

# JSONへ変換
# ハッシュからJSONへの変換
# pの引数を渡すときに()を省略すると意図通り解釈されずエラーとなる
p ({mocha: 400}.to_json) # => "{\"mocha\":400}"

# WebページへHTTP POSTメソッドでリクエストをする
require "net/http"
require "uri"
require "json"
uri = URI("https://www.example.com")
result3 = Net::HTTP.post(uri, {mocha: 400}.to_json, "Contet-Type" => "applicaiton/json")
p result3 # => #<Net::HTTPOK 200 OK readbody=true>
# HTTP POSTメソッドはリクエストとしてデータを送ることが多い
# {mocha: 400}.to_jsonは送るJSON形式データ
# "Conten-Type" => "application/json"は送るデータ形式としてJSONを指定している
