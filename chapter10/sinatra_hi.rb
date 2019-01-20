require "sinatra"

get "/hi" do # /hiへアクセスされた時の処理をブロックで書く
  "hi!" # ブロックの最後の結果をブラウザで表示する
end