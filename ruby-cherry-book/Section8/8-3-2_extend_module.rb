# モジュールをextendする
## モジュール内のメソッドを、クラスの特異メソッド（クラスメソッド）にする

module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  # モジュールのメソッドをクラスの特異メソッド（クラスメソッド）としてmix-in
  extend Loggable

  # クラス構文の直下でも呼び出せる
  log 'Defined Product class.'

  def self.create_products(names)
    log 'create_products is called.'
  end
end
#=> [LOG] Defined Product class.


# クラスメソッド経由でlogメソッドが呼び出される
Product.create_products([])
#  => [LOG] create_products is called.

# Productクラスのクラスメソッドとしてlogメソッドを呼び出せる
Product.log('Hello.')
#  => [LOG] Hello.
