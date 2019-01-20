# Gem
# awesome_printというGemをインストールし、使ってみる
require "awesome_print"
ap ["カフェラテ", "モカ", "コーヒー"]
# [
#     [0] "カフェラテ",
#     [1] "モカ",
#     [2] "コーヒー"
# ]

# Bundler
# 複数のGemを簡単に管理するBundler
# bundle initしGemfileを作成
# Gemfileにgem "pry"と記述し、bundle install
# gem install pryを実行したのと同じ処理がされる

# Gemfile => Gemをインストールするための発注書
# Gemfile.lock => 納品書

# bundle updateコマンドでGemをバージョンアップする

# bundle execコマンドで指定したバージョンのGemを使う
