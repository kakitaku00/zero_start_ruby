# 例外の詳しい情報を得る
# rescue説の後ろに=> eと書くと変数eに例外オブジェクトが代入される
def cat(filename)
  # ファイルの内容を表示する
  File.open(filename) do |file|
    # each_line = ファイルの先頭から1行ずつ読み込むメソッド
    file.each_line {|line| puts line}
  end
rescue SystemCallError => e
  puts "--- 例外が発生しました ---"
  puts "例外クラス: #{e.class}"
  puts "例外メッセージ: #{e.message}"
end

# コマンドプロンプトの引数を読み込み
filename = ARGV.first
cat(filename)

# $ ruby 11_1_cat.rb menu.txt
# カフェラテ
# カプチーノ

# $ ruby 11_1_cat.rb notfound.txt
# --- 例外が発生しました ---
# 例外クラス: Errno::ENOENT
# 例外メッセージ: No such file or directory @ rb_sysopen - notfound.txt