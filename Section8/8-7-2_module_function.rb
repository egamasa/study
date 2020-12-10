# module_function メソッド
## → モジュール関数化（メソッドをミックスインでも特異メソッドとしても使える）

module Loggable
  # module_function
  # 以下に定義したメソッドはすべてモジュール関数になる

  def log(text)
    puts "[LOG] #{text}"
  end

  # モジュール関数にする（モジュールの特異メソッドとしても使えるようにする）
  module_function :log
end

## モジュールの特異メソッドとして呼び出す
Loggable.log('Hello.')  #=> [LOG] Hello.



class Product
  include Loggable

  def title
    log 'title is called.'
    p 'A great movie'
  end
end

## ミックスインとしてメソッドを呼び出す
product = Product.new
product.title
#  => [LOG] title is called.
#     "A great movie"

# module_function でモジュール関数にすると自動的にprivateになるので、クラス外部・インスタンス外部からは呼び出せない
product.log 'Hello.'
#  => private method `log' called for #<Product:0x00000000016ea5e0> (NoMethodError)
