# エイリアスメソッドの定義

class User
  def hello
    puts 'Hello!'
  end

  # hello のエイリアスメソッド、greeting を定義
  alias greeting hello
end

user = User.new
user.hello  #=> Hello!
user.greeting  #=> Hello!
