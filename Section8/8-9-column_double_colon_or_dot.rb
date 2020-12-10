# 二重コロン(::)とドット(.)の違い

module Sample
  class User
    NAME = 'Alice'.freeze

    def self.hello(name = NAME)
      "Hello, I am #{name}."
    end
  end
end

# 定数・クラス・モジュール呼び出し
# → 二重コロン：〇、ドット：×
p Sample::User  #=> Sample::User
p Sample.User   #=> undefined method `User' for Sample:Module (NoMethodError)

p Sample::User::NAME  #=> "Alice"
p Sample::User.NAME   #=> undefined method `NAME' for Sample::User:Class (NoMethodError)


# メソッド呼び出し
# → 二重コロン：〇、ドット：〇
p Sample::User::hello  #=> "Hello, I am Alice."
p Sample::User.hello   #=> "Hello, I am Alice."

s = 'abc'
p s::upcase  #=> "ABC"
p s.upcase   #=> "ABC"
