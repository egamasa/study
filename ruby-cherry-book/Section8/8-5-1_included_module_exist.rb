# includeされたモジュールの有無を確認する

module Loggable
end

class Product
  include Loggable
end


# 指定したモジュールがincludeされているか
p Product.include?(Loggable)  #=> true

# includeされているモジュールの一覧
p Product.included_modules
#  => [Loggable, Kernel]

# includeされているモジュールとスーパークラス
p Product.ancestors
#  => [Product, Loggable, Object, Kernel, BasicObject]


# インスタンスから取得
product = Product.new
p product.class
p product.class.include?(Loggable)  #=> true
p product.class.included_modules  #=> [Loggable, Kernel]

p product.is_a?(Product)  #=> true
p product.is_a?(Loggable)  #=> true
p product.is_a?(Object)  #=> true
