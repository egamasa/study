# クラスメソッドをprivateにする
## class << self 構文を使う

class User
  class << self
    private
    # class << self 内のprivate以下ではクラスメソッドもprivateクラスになる

    def hello1
      puts 'Hello! (1)'
    end
  end

  def self.hello2
    puts 'Hello! (2)'
  end

  def self.hello3
    puts 'Hello! (3)'
  end

  # クラスメソッドを定義後にprivateに変更
  private_class_method :hello3
end

# クラス外部から呼び出せない
User.hello1
#  => private method `hello1' called for User:Class (NoMethodError)

User.hello2
#=> Hello! (2)

# クラス外部から呼び出せない
User.hello3
#  => private method `hello3' called for User:Class (NoMethodError)
