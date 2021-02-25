# privateメソッドから先に定義する

class User
  private
  # 以下のメソッドはprivate

  def foo
    puts "foo (private)"
  end

  public
  # 以下のメソッドはpublic

  def bar
    puts "bar (public)"
  end
end


user = User.new

# クラス外部から呼び出せる
user.bar  #=> bar (public)

# クラス外部から呼び出せない
user.foo
#  => private method `foo' called for #<User:0x000000000120e648> (NoMethodError)
