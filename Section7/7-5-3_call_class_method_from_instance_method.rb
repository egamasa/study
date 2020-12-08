### インスタンスメソッドからクラスメソッドを呼び出す ###

class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  # 金額の整形（クラスメソッド）
  def self.format_price(price)
    "#{price}円"
  end

  # インスタンスメソッド
  def to_s
    # クラスメソッドを呼び出す
    formatted_price = Product.format_price(price)
    # formatted_price = self.class.format_price(price)  でもOK

    puts "name: #{name}, price: #{formatted_price}"
  end
end


product = Product.new('A great movie', 1000)
product.to_s
#=> name: A great movie, price: 1000円
