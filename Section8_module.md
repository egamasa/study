# 8章 モジュール

- モジュールからインスタンスは作成できない
  - `new` メソッドは使えない
- 他のモジュールやクラスを継承できない
  - `<` は使えない


## モジュール定義

```ruby
module Loggable
  # 定数も使える
  PREFIX = '[LOG]'.freeze

  def hello
    'Hello'
  end

  private
  # 外部から直接呼び出す必要が無ければ、private以下で定義

  def log(text)
    puts "#{PREFIX} #{text}"
  end
end

# 定数の参照
Loggable::PREFIX  # => "[LOG]"
```


## モジュールのinclude

```ruby
class User
  include Loggable

  def name
    log 'name is called.'
    p 'Alice'
  end
end

user = User.new  # => [LOG] name is called.
user.name  # => "Alice"
```

- includeしたモジュールの確認
  ```ruby
  # 指定モジュールがincludeされているか
  User.include?(Loggable)  # => true

  # includeされたモジュール一覧
  User.included_modules
  # => [Loggable, Kernel]

  # includeされたモジュールとスーパークラス一覧
  User.ancestors
  # => [User, Loggable, Object, Kernel, BasicObject]
  ```

- include先のメソッドを使う
  ```ruby
  module Taggable
    def price_tag
      # priceメソッドがinclude先に定義されている前提
      puts "#{price}円"
      # "#{self.price}円" とselfを付けても良い
    end
  end

  class Product
    include Taggable

    def price
      1000
    end
  end
  ```


## モジュールのmix-in

- `extend` メソッド
-  モジュール内メソッドを、クラスの特異メソッド（クラスメソッド）として呼び出せる

```ruby
class Product
  extend Loggable

  # クラス構文の直下でも呼び出せる
  log 'Defined Product class.'

  def self.create_products(names)
    log 'create_products is called.'
  end
end
# => [LOG] Defined Product class.

# クラスメソッド経由で呼び出し
Product.create_products([])
# => [LOG] create_products is called.

# Productクラスのクラスメソッドとして呼び出し（privateメソッドでは不可）
Product.log('Hello.')
# => [LOG] Hello.
```

- オブジェクトに直接mix-in
  ```ruby
  s = 'abc'
  s.extend(Loggable)
  s.log('Hello.')  #=> [LOG] Hello.
  ```


## モジュールに特異メソッドを定義

- `class << self ... end` 内にメソッドを定義
-  モジュール単体からメソッドを呼び出し可能
- ライブラリのような、メソッド（関数）の集まりを作る場合に有効

```ruby
module Loggable
  class << self
    def log(text)
      puts "[LOG] #{text}"
    end
  end
end

Loggable.log('Hello.')  # => [LOG] Hello.
```


## モジュール関数

- `module_function` メソッドで定義・変更
- mix-inとしても、特異メソッドとしても使えるモジュールのメソッド

```ruby
module Loggable
  module_function
  # [方法1] module_function 以下で定義したメソッドはモジュール関数

  def log(text)
    puts "[LOG] #{text}"
  end

  # [方法2] module_function でモジュール関数に変更
  module_function :log
end

# モジュールの特異メソッドとして呼び出し
Loggable.log('Hello.')  #=> [LOG] Hello.

class Product
 include Loggable

  def title
    log 'title is called.'
  end
end

product = Product.new
# mix-inとして呼び出し
product.title  # => [LOG] title is called.

# モジュール関数は自動的にprivateになる
# クラス外部・インスタンス外部からは呼び出せない
product.log 'Hello.'
# => private method `log' called for ... (NoMethodError)
```


## 名前空間の作成

- クラス名等の名前の衝突を防ぐ
- `::` でモジュール内を参照

```ruby
module Baseball
  class Second
  end
end

module Clock
end

class Clock::Second
end

# 異なるモジュールに属するSecondクラスが共存可能
Baseball::Second.new
# => #<Baseball::Second: ...>
Clock::Second.new
# => #<Clock::Second: ...>
```


## 状態を保持するモジュール

- シングルトンパターン
  - アプリケーション内で唯一無二のオブジェクトを作る手法
    - ライブラリやアプリケーションのConfig等に利用
  - クラス + Singletonモジュールでも実装可能


## メソッド探索の順序

```ruby
module A
end

module B
end

class Hoge
end

class Fuga < Hoge
  include A
  include B
end

class Piyo < Hoge
  prepend A
  prepend B
end

Fuga.ancestors
# => [Fuga, B, A, Hoge, Object, Kernel, BasicObject]

# prependでモジュールをmix-in
Piyo.ancestors
# => [B, A, Piyo, Hoge, Object, Kernel, BasicObject]
```


## 主な組み込みモジュール

- Enumerable
  - 繰り返し処理が可能なクラス(Array, Hash, Range, ...)にincludeされている
  - 主なメソッド
    - map
    - select
    - find
    - count
- Compararable
  - 比較演算
  - 主なメソッド
    - <
    - <=
    - ==
    - \>=
    - between?
    - <=> （UFO演算子）
- Kernel
  - Objectクラスにincludeされている
    - どこからでも使える
  - 主なメソッド
    - puts
    - p
    - print
    - require
    - loop
