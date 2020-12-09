# 7 クラス

## クラス定義・インスタンスメソッド

```ruby
# クラス
class User
  # 属性（アトリビュート、プロパティ）
  # first_name, last_name を外部から読み取るメソッドを生成
  attr_reader :first_name, :last_name
  # age を外部から読み書きするメソッドを生成
  attr_accessor :age

  # attr_accessor を使わない場合、下記のようなメソッド定義が必要となる
  #   def age
  #     @age
  #   end
  #   def age=(value)
  #     @age = value
  #   end

  # new メソッドで実行される、外部から呼び出せない（private）
  def initialize(first_name, last_name, age)
    # インスタンス変数
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  # インスタンスメソッド
  def full_name
    "#{first_name} #{last_name}"
  end
end

# オブジェクト（インスタンス）
alice = User.new('Alice', 'Ruby', 20)

# 「first_name メソッドのレシーバー（メソッドを呼び出された側）は alice」
# 「レシーバー alice に対してメッセージ first_name を送る」
alice.first_name  # => "Alice"

alice.last_name  # => "Ruby"
# 書き換え不可（attr_reader）
alice.last_name = 'Python'
# => NoMethodError (undefined method `last_name=' for #<User:0x0000000001362008>)

alice.age  # => 20
# 書き換え可能（attr_accessor）
alice.age = 21
alice.age  # => 21
```


## クラスメソッド

```ruby
class User
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # クラスメソッド
  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end

  # インスタンスメソッド
  def hello
    "Hello, I am #{@name}"
  end
end

names = ['Alice', 'Bob', 'Carol']
users = User.create_users(names)
users.each do |user|
  puts user.hello
end
# => Hello, I am Alice  Hello, I am Bob  Hello, I am Carol
```


## 定数

```ruby
class Product
  # 定数
  DEFAULT_PRICE = 0

  attr_reader :name, :price

  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
end

product_hoge = Product.new('hoge', 300)
product_fuga = Product.new('fuga')

product_hoge.name   # => "hoge"
product_hoge.price  # => 300

product_fuga.name   # => "fuga"
product_fuga.price  # => 0

Product::DEFAULT_PRICE  # => 0
```


## selfキーワード

```ruby
class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # 3つともインスタンス変数が呼び出される
  def hello
    "Hello, I am #{name}."
  end
  def hi
    "Hi, I am #{self.name}."
  end
  def my_name
    "My name is #{@name}"
  end

  def rename_to_bob
    # メソッドのローカル変数への代入として扱われるのでインスタンス変数は変更されない
    name = 'Bob'
  end

  def rename_to_carol
    # "self" でインスタンス変数が変更される
    self.name = 'Carol'
  end

  def rename_to_dave
    # "@" でインスタンス変数が変更される
    @name = 'Dave'
  end
end

user = User.new('Alice')

# どの呼び出し方でもインスタンス変数が呼び出される
user.hello  # => "Hello, I am Alice."
user.hi  # => "Hi, I am Alice."
user.my_name  # => "My name is Alice"

# インスタンス変数は変更されない
user.rename_to_bob
user.name  # => "Alice"

# インスタンス変数が変更される
user.rename_to_carol
user.name  # => "Carol"

user.rename_to_dave
user.name  # => "Dave"
```


## クラスの継承

- クラスの関係
  ```ruby
  class User
  end

  user = User.new
  # オブジェクトのクラスを確認
  user.class  # => User

  # instance_of? : user は Userクラスのインスタンスか？
  user.instance_of?(User)    # => true
  user.instance_of?(String)  # => false

  # is_a? / kind_of? : user は x と継承関係にあるか？
  user.is_a?(User)       # => true
  user.kind_of?(Object)  # => true
  user.is_a?(Hash)       # => false
  ```

- スーパークラスのメソッドを呼び出す
  ```ruby
  class Product
    attr_reader :name, :price

    def initialize(name, price)
      @name = name
      @price = price
    end
  end

  class DVD < Product
    # :name, :price はスーパークラスで設定済み
    attr_reader :running_time

    def initialize(name, price, running_time)
      super(name, price)
      # super    => スーパークラスの同名メソッドを呼び出す
      # super()  => 引数0個

      @running_time = running_time
    end
  end
  ```


## メソッドの公開レベル

- public
  - クラス外部から呼び出し可能
  - 定義方法
    - メソッドを定義すると、デフォルトはpublic
    - 明示的に定義するには、`public` 以下に定義
- private
  - レシーバ（self（クラス自身）含む）を指定して呼び出せない
  - 定義方法
    - `private` 以下に定義
    - `private` メソッドでprovateに変更
    - `private_class_method` メソッドでprivateに変更（クラスメソッドのみ）
    - `class << self` 内で `private` いかに定義（クラスメソッドのみ）
- protected
  - 同じクラス内かサブクラスから、レシーバ付きで呼び出せる
  - 定義方法
    - `protected` 以下に定義
    - `protected` メソッドでprotectedに変更
