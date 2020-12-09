# include先のメソッドを使うモジュール

module Taggable
  # priceメソッドがinclude先に定義されている前提
  def price_tag
    puts "#{price}円"
    # puts "#{self.price}円"  # selfを付けても良い
  end
end

class Product
  include Taggable

  def price
    1000
  end
end


product = Product.new
product.price_tag  #=> 1000円
