# ダックタイピング

class User
  def name
    'Alice'
  end
end

class Admin
  def name
    'Bob'
  end
end

def display_name(object)
  # objectが何のクラスであろうと関係ない。nameが呼び出せるのならばそれでOK
  puts "Name is <<#{object.name}>>"
end


user = User.new
display_name(user)  #=> Name is <<Alice>>

admin = Admin.new
display_name(admin)  #=> Name is <<Bob>>

#===============================================

class Product
  def initialize(name, price)
    @name = name
    @price = price
  end

  def display_text
    stock = stock? ? 'あり' : 'なし'
    puts "商品名: #{@name} 価格: #{@price}円 在庫: #{stock}"
  end

  # Productクラスで stock? メソッドが呼び出された場合のエラー処理
  def stock?
    raise 'Must implement stock? in subclass.'
  end
end

class DVD < Product
  def stock?
    true
  end
end


product = Product.new('A great film', 1000)
product.display_text
#=> Must implement stock? in subclass. (RuntimeError)

dvd = DVD.new('An awesome film', 3000)
dvd.display_text
#=> 商品名: An awesome film 価格: 3000円 在庫: あり
