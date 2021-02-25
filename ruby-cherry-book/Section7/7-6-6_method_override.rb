### メソッドのオーバーライド ###

class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  # Objectクラスのto_sメソッドをオーバーライド
  def to_s
    "name: #{@name}, price: #{@price}"
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  # Productクラスのto_sメソッドをオーバーライド
  def to_s
    # "name: #{@name}, price: #{@price}, running_time: #{running_time}"

    # super でProductクラスのto_sメソッドを呼び出す
    "#{super}, running_time: #{running_time}"
  end
end


product = Product.new('A great movie', 1000)
puts product.to_s
#=> name: A great movie, price: 1000

dvd = DVD.new('An awesome film', 3000, 120)
puts dvd.to_s
#=> name: An awesome film, price: 3000, running_time: 120
