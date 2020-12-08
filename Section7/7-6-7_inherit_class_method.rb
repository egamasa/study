### クラスメソッドの継承 ###

class Foo
  def self.hello
    p 'hello'
  end
end

class Bar < Foo
end

# BarでもスーパークラスFooのクラスメソッドが呼び出せる
Foo.hello  #=> "hello"
Bar.hello  #=> "hello"
