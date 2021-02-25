### selfキーワード ###

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    # selfなし
    puts "Hello, I am #{name}."
  end

  def hi
    # self付き
    puts "Hi, I am #{self.name}."
  end

  def my_name
    # インスタンス変数に直接アクセス
    puts "My name is #{@name}."
  end
end


user = User.new('Alice')

# 呼び出すだけであれば、どの呼び出し方法でも呼び出せる
user.hello  #=> Hello, I am Alice.
user.hi  #=> Hi, I am Alice.
user.my_name  #=> My name is Alice.
