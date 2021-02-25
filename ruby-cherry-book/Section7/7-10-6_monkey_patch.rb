# モンキーパッチ
## 既存のメソッドを上書きし、期待する挙動に変更する

class User
  def initialize(name)
    @name = name
  end

  def hello
    "Hello, #{@name}"
  end
end

user = User.new('Alice')
p user.hello  #=> "Hello, Alice"


# クラスを再オープンし、モンキーパッチを当てる
class User
  # 元々の hello メソッドは、hello_original として呼び出せるようにしておく
  alias hello_original hello

  def hello
    "#{hello_original}じゃなくて、#{@name}さん、こんにちは！"
  end
end

p user.hello  #=> "Hello, Aliceじゃなくて、Aliceさん、こんにちは！"
