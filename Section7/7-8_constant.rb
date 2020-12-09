# 定数

class Product
  # 定数はクラス直下でのみ定義できる
  DEFAULT_PRICE = 0
  DEFAULT_PRICE_PRIVATE = 0

  # 定数をprivateにする
  private_constant :DEFAULT_PRICE_PRIVATE
end

p Product::DEFAULT_PRICE  #=> 0

# privateなのでクラス外部から参照できない
p Product::DEFAULT_PRICE_PRIVATE
#  => private constant Product::DEFAULT_PRICE_PRIVATE referenced (NameError)
