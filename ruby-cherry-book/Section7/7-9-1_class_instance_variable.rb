# クラスインスタンス変数
## スーパークラスとサブクラスで別々に管理される

class Product
  # クラスインスタンス変数
  @name = 'Product'

  def self.name
    # クラスインスタンス変数
    @name
  end

  def initialize(name)
    # インスタンス変数
    @name = name
  end

  def name
    # インスタンス変数
    @name
  end
end

class DVD < Product
  @name = 'DVD'

  def self.name
    # クラスインスタンス変数を参照
    @name
  end

  def upcase_name
    # インスタンス変数を参照
    @name.upcase
  end
end


p Product.name  #=> "Product"
p DVD.name  #=> "DVD"

product = Product.new('A great movie')
p product.name  #=> "A great movie"

dvd = DVD.new('An awesome film')
p dvd.name  #=> "An awesome film"
p dvd.upcase_name  #=> "AN AWESOME FILM"

p Product.name  #=> "Product"
p DVD.name  #=> "DVD"
