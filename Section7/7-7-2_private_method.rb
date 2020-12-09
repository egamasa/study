# privateメソッド
## レシーバ（self含む）を指定して呼び出すことができないメソッド

class User
  def my_name
    # クラス内でprivateメソッドを呼び出す（self. を付けるとエラー）
    puts "Hello, I am #{name}."
  end

  private
  # private以下で定義したメソッドはprivate

  def hello
    puts 'Hello!'
  end

  def name
    'Alice'
  end
end

user = User.new

user.my_name
#=> Hello, I am Alice.

# privateメソッドはクラス外部からは呼び出せない
user.hello
#  => private method `hello' called for #<User:0x0000000001b32fd0> (NoMethodError)
