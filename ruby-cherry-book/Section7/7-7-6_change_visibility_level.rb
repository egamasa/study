# 後からメソッドの公開レベルを変更する

class User
  # publicとして定義
  def foo
    puts 'foo'
  end

  def bar
    puts 'bar'
  end

  # foo, bar をprivateメソッドに変更
  private :foo, :bar

  # publicとして定義
  def baz
    puts 'baz'
  end
end


user = User.new

# クラス外部から呼び出せない
user.foo
#  => private method `foo' called for #<User:0x00000000010aa428> (NoMethodError)

# クラス外部から呼び出せない
user.bar
#  => private method `bar' called for #<User:0x00000000012a3248> (NoMethodError)

# クラス外部から呼び出せる
user.baz  #=> baz
