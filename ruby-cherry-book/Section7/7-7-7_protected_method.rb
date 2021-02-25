# protectedメソッド
## 定義したクラスとサブクラスから、レシーバ付きで呼び出せる

class User
  attr_reader :name

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  protected
  # 同じクラスかサブクラス内でのみ、@weight を取得可能にする
  def weight
    @weight
  end

  ## 一旦publicのアクセサメソッドで定義して、後からprotectedに変更する方法もある
  # attr_reader :name, :weight
  # protected :weight
end

alice = User.new('Alice', 50)
bob = User.new('Bob', 60)

# クラス内部ではweightを参照して処理可能
p alice.heavier_than?(bob)  #=> false
p bob.heavier_than?(alice)  #=> true

# クラス外部からはweightを参照できない
p alice.weight
#  => protected method `weight' called for #<User:0x00000000018c3178 @name="Alice", @weight=50> (NoMethodError)
