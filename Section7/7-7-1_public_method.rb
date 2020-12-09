# publicメソッド

class User
  # インスタンスメソッドはデフォルトでpublic（initializeメソッド以外）
  def hello
    puts 'Hello!'
  end
end

user = User.new

# publicなのでクラス外部から呼び出せる
user.hello  #=> Hello!
