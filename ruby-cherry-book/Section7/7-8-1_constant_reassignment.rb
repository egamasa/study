### 定数と再代入 ###

class Product
  DEFAULT_PRICE = 0

  # 再代入（警告が出るが可能）
  DEFAULT_PRICE = 1000
  #  => warning: already initialized constant Product::DEFAULT_PRICE
end

p Product::DEFAULT_PRICE  #=> 1000


# クラス外部から再代入
Product::DEFAULT_PRICE = 3000
#  => warning: already initialized constant Product::DEFAULT_PRICE

p Product::DEFAULT_PRICE  #=> 3000


# クラスを凍結（通常はしない）
Product.freeze

## 再代入不能になる
Product::DEFAULT_PRICE = 5000
#  => can't modify frozen #<Class:Product>: Product (FrozenError)
