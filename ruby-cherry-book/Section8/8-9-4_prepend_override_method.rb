# prepend で既存のメソッドを置き換える

class Product
  def name
    "A great film"
  end
end

# メソッド置換前
product = Product.new
p product.name  #=> "A great film"


module NameDecorator
  def name
    "<<#{super}>>"
  end
end

# モジュールをmix-in
class Product
  ## NameDecoratorのnameメソッドが優先になる
  prepend NameDecorator
end

## 別の書き方
Product.prepend NameDecorator

# メソッド置換後
product = Product.new
p product.name  #=> "<<A great film>>"
