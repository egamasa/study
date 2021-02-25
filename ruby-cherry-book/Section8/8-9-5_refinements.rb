# 有効範囲を限定できるrefinements
## （Ruby 2.0以降）

# 適用前
'Alice'.shuffle
#  => undefined method `shuffle' for "Alice":String (NoMethodError)


# refinements
module StringShuffle
  # Stringクラスを対象に指定
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end

class User
  # refinements有効化（Userクラス内で有効）
  using StringShuffle

  def initialize(name)
    @name = name
  end

  def shuffled_name
    @name.shuffle
  end
end

## トップレベルでrefinementsを有効化すると、同一ファイル内で有効
# using StringShuffle

user = User.new('Alice')
# refinementsが有効なクラス内のStringオブジェクトに対してshuffleメソッドが有効
p user.shuffled_name  #=> "eliAc"

# refinementsが有効なクラス外部では呼び出せない
p 'Alice'.shuffle  #=> undefined method `shuffle' for "Alice":String (NoMethodError)


# 複数のrefineを定義
module SomeModule
  refine Object do
  end

  refine String do
  end

  ## Ruby 2.4以降ではモジュールも指定可能
  refine Enumerable do
  end
end
