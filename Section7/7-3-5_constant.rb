### 定数 ###

class Product
  # 定数定義
  DEFAULT_PRICE = 0

  attr_reader :name, :price

  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end

  # クラスメソッドから定数を参照
  def self.default_price
    DEFAULT_PRICE
  end

  # インスタンスメソッドから定数を参照
  def default_price
    DEFAULT_PRICE
  end
end


product = Product.new('A free movie')
p product.price  #=> 0

# インスタンスメソッドで定数を参照
p product.default_price  #=> 0

# クラスメソッドで定数を参照
p Product.default_price  #=> 0
