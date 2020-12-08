### インスタンス変数とアクセサメソッド ###

class User
  # @age を読み書きするメソッドを自動的に定義
  attr_accessor :age

  # @name の読み取り用メソッドを自動的に定義
  attr_reader :name

  # @name の書き込み用メソッドを自動的に定義
  # attr_writer :name


  def initialize(name, age)
    # インスタンス生成時の引数をインスタンス変数に格納する
    # インスタンス変数（@）はインスタンス（オブジェクト）内で共有される
    @name = name
    @age = age
  end

  def hello
    # インスタンス変数を呼び出す
    puts "Hello, I am #{@name}."

    # shuffled_name はローカル変数
    shuffled_name = @name.chars.shuffle.join
    puts "Hello, I am #{shuffled_name}."
  end

  # 未定義のインスタンス変数（インスタンス変数名をtypoした想定）
  def hello_typo
    puts "Hello, I am #{@mame}."
    p @mame
  end

  # @nameを外部から参照するためのメソッド
  ## → attr_reader でOK
  # def name
  #   @name
  # end

  # @nameを外部から変更するためのメソッド
  ## → attr_writer でOK
  # def name=(value)
  #   @name = value
  # end
end


user = User.new('Alice', 20)
user.hello
#=> Hello, I am Alice.
#   Hello, I am Aceil.

# 未定義のインスタンス変数を呼び出してもエラーにはならない（nilが返る）
user.hello_typo
#  => Hello, I am .
#     nil

# インスタンス変数を外部から参照
p user.name  #=> "Alice"
p user.age  #=> 20

# インスタンス変数を外部から変更
user.age = 21
p user.age  #=> 21

## @name はattr_readerで定義しているので変更できない
user.name = 'Bob'
#  => undefined method `name=' for #<User:0x0000000000c21988 @name="Alice", @age=20> (NoMethodError)
