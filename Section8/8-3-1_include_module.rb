# モジュールをクラスにincludeする

# ログ出力メソッドを提供するモジュール
module Loggable
  private

  def log(text)
    puts "[LOG] #{text}"
  end
end

# 各クラスでモジュールをinclude
class Product
  include Loggable

  def title
    log 'title is called.'
    p 'A great movie'
  end
end

class User
  include Loggable

  def name
    log 'name is called.'
    p 'Alice'
  end
end


product = Product.new
product.title
#=> [LOG] title is called.
#   "A great movie"

user = User.new
user.name
#=> [LOG] name is called.
#   "Alice"


# モジュールのメソッドをクラス外から呼び出す必要が無ければ、privateメソッドにしておく
user.log 'hogehoge'
#  => private method `log' called for #<User:0x0000000001711c08> (NoMethodError)
