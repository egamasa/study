### クラスの定義 ###

# OrderItemクラスの定義
class OrderItem
  # initialize メソッド :newメソッドで呼び出される
  def initialize
    puts 'Initialized.'
  end
end

# Userクラスの定義
class User
  def initialize(name, age)
    puts "name: #{name}, age: #{age}"
  end
end

# オブジェクトの生成
OrderItem.new
#  => Initialized.
User.new('Alice', 20)
#  => name: Alcie, age: 20

# initializeメソッドは外部から呼び出せない
OrderItem.initialize
#  => private method `initialize' called for OrderItem:Class (NoMethodError)
