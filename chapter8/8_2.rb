# クラスを作る
class Drink
end
# => 何も表示されない
# Drinkクラスを使ってDrinkクラスのオブジェクトを作る
drink = Drink.new # Drinkクラスにdrinkという変数名をつける
p drink.class # => Drink

# クラスも実はオブジェクト
class CaffeLatte
end
p CaffeLatte.class # => Class