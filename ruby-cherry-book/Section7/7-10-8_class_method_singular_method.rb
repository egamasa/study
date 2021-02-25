# クラスメソッドは特異メソッドの一種

# 特異メソッド定義の構文でクラスメソッドを定義
class User
end

def User.hello
  puts 'Hello.'
end

class << User
  def hi
    puts 'Hi.'
  end
end

User.hello  #=> Hello.
User.hi  #=> Hi.
