# クラス変数
## クラスメソッド内、インスタンスメソッド内、スーパークラス、サブクラスでも共有される

class Product
  @@name = 'Product'

  def self.name
    @@name
  end

  def initialize(name)
    @@name = name
  end

  def name
    @@name
  end
end

class DVD < Product
  @@name = 'DVD'

  def self.name
    @@name
  end

  def upcase_name
    @@name.upcase
  end
end


# DVDクラス定義で @@name = "DVD"
p Product.name  #=> "DVD"
p DVD.name  #=> "DVD"

product = Product.new('A great movie')
p product.name  #=> "A great movie"

# Product.newで @@name = "A great movie"
p Product.name  #=> "A great movie"
p DVD.name  #=> "A great movie"

dvd = DVD.new('An awesome film')
p dvd.name  #=> "An awesome film"
p dvd.upcase_name  #=> "AN AWESOME FILM"

# DVD.newで @@name = "An awesome film"
p product.name  #=> "An awesome film"
p Product.name  #=> "An awesome film"
p DVD.name  #=> "An awesome film"
