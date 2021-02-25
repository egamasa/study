### スーパークラスのメソッドを呼び出す ###

class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

product = Product.new('A great movie', 1000)
p product.name  #=> "A great movie"
p product.price  #=> 1000


class DVD < Product
  attr_reader :running_time

  # スーパークラスと同じ処理ならメソッド自体も省略可能
  def initialize(name, price, running_time)
    # スーパークラスと同じ処理
    # @name = name
    # @price = price

    # 同じ処理ならsuperでOK
    super(name, price)

    # メソッドの引数も同じなら引数も省略可能
    # super

    # DVDクラス独自の処理
    @running_time = running_time
  end
end

dvd = DVD.new('A great DVD', 1500, 180)
p dvd.name  #=> "A great DVD"
p dvd.price  #=> 1500
p dvd.running_time  #=> 180
