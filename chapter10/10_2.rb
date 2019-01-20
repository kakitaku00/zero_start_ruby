# sinatra Gemを使ってWebアプリを作る
# $ gem install sinatra

require "sinatra" #sinatra読み込み
get "/hi" do # /hiへアクセスされた時の処理をブロックで書く
  "hi!" # ブロックの最後の結果をブラウザで表示する
end
# 実行するコマンドの後ろに -p 4567 をつけ実行
# http://localhost:4567/hi にアクセスするとhi!が表示される

# Webアプリの中でRubyプログラムを実行する
get "/drink" do
  ["カフェラテ", "モカ", "コーヒー"].sample
end