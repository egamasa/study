### クラスメソッドの定義 ###

class User
  def initialize(name)
    @name = name
  end

  # クラスメソッド（self.）
  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end

  # インスタンスメソッド
  def hello
    puts "Hello, I am #{@name}."
  end
end


alice = User.new('Alice')
bob = User.new('Bob')
# インスタンス（オブジェクト）に対して、インスタンスメソッドを呼び出す
alice.hello
#  => Hello, I am Alice.
bob.hello
#  => Hello, I am Bob.


names = ['Alice', 'Bob', 'Carol']
# クラスに対して、クラスメソッドを呼び出す
users = User.create_users(names)
users.each do |user|
  user.hello
end
#  => Hello, I am Alice.
#     Hello, I am Bob.
#     Hello, I am Carol.
