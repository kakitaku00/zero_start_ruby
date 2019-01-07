# ハッシュ
p ( {:coffee => 300, :caffe_latte => 400} )
# ハッシュをpメソッドに渡すときに()を省略すると、文法の解釈が曖昧となりエラーとなる
# :coffe :caffe_latte => シンボルオブジェクト

# シンボル
# シンボルは文字列に似ているオブジェクト
# シンボルはハッシュのキーでラベルのように使われる
# 文字列 => シンボル to_symメソッド
p "coffee".to_sym # => :coffee
p :coffee.to_s # => "coffee"

# ハッシュロケットの省略
p ( {:coffee => 300, :caffe_latte => 400} )
p ( {coffee: 300, caffe_latte: 400} )
# 2行目の書き方の方が主流
# キーにシンボル以外のオブジェクトを使用する場合はハッシュロケットを使用する(省略不可)
p ( {"コーヒー" => 300, "カフェラテ" => 400} )

# 変数に代入してハッシュに名前をつける
menu = {:coffee => 300, :caffe_latte => 400}
p menu # => {:coffee=>300, :caffe_latte=>400}
# ハッシュから値を受け取る
p menu[:coffee] # => 300
# シンボルがキーの時:をつけるのを忘れずに

# まとめ
# キーがシンボルのときの書き方
# {キー: 値, キー: 値}

# キーがシンボル以外のときの書き方
# {キー => 値, キー => 値}

# ハッシュのキーから値を取得
# ハッシュ[キー]


