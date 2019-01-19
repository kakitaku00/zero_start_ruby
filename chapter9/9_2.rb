# モジュールにクラスメソッドを定義する
module WhippedCream
  def self.info
    "トッピング用ホイップクリーム"
  end
end
puts WhippedCream.info # => トッピング用ホイップクリーム

# 定数を使う
module WhippedCream
  Price = 100
end
puts WhippedCream::Price # => 100
# 定数を通ときは::と繋げて書く

# Rubyが用意しているモジュールを使う
# Mathモジュール
puts Math::PI # => 3.141592653589793
puts Math.cos(Math::PI) # => -1.0

# 名前空間
# 同じクラス名を複数の場所で使いたいが、別のクラスなので別々に定義して呼ぶ
module BecoCafe
  class Coffee
    def self.info
      "深みと香りのコーヒー"
    end
  end
end
module MachuCafe
  class Coffee
    def self.info
      "豊かな甘みのコーヒー"
    end
  end
end
puts BecoCafe::Coffee.info # => 深みと香りのコーヒー
puts MachuCafe::Coffee.info # => 豊かな甘みのコーヒー
# モジュール名::クラス名と書きクラスを使い分けることができる
