# ミュータブルなオブジェクトの定数

# ミュータブルなオブジェクト
## 再代入せずとも（破壊的メソッド等で）値が変更可能（String, Array, Hash, ...）

class Product
  NAME = 'A product'
  SOME_NAMES = ['Foo', 'Bar', 'Baz']
  SOME_PRICES = { 'Foo' => 1000, 'Bar' => 2000, 'Baz' => 3000 }

  # 配列自体をフリーズ（各要素はフリーズされない）
  # SOME_NAMES_FREEZE = ['Foo', 'Bar', 'Baz'].freeze

  # 配列自体と各要素をフリーズ
  SOME_NAMES_FREEZE = ['Foo', 'Bar', 'Baz'].map(&:freeze).freeze

  # 引数に破壊的な変更を加えるメソッドで、定数をデフォルト値に指定した場合
  def self.names_without_foo(names = SOME_NAMES)
    names.delete('Foo')
    names
  end

  def self.names_freezed_without_foo(names = SOME_NAMES_FREEZE)
    names.delete('Foo')
    names
  end

  # 数値, シンボル, boolean はフリーズ不要（イミュータブル）
  SOME_VALUE = 0
  SOME_TYPE = :foo
  SOME_FLAG = true
end


# 文字列に対して破壊的メソッドを呼び出す
Product::NAME.upcase!
p Product::NAME
#  => "A PRODUCT"

# クラスメソッドで定数が変更されてしまう場合
p Product.names_without_foo
#  => ["Bar", "Baz"]
p Product::SOME_NAMES
#  => ["Bar", "Baz"]

# 配列へ要素を追加
Product::SOME_NAMES << 'Hoge'
p Product::SOME_NAMES
#  => ["Bar", "Baz", "Hoge"]

# ハッシュにキーと値を追加
Product::SOME_PRICES['Hoge'] = 4000
p Product::SOME_PRICES
#  => {"Foo"=>1000, "Bar"=>2000, "Baz"=>3000, "Hoge"=>4000}


# フリーズした配列は変更できない
Product::SOME_NAMES_FREEZE << 'Hoge'
#  => can't modify frozen Array: ["Foo", "Bar", "Baz"] (FrozenError)

p Product::names_freezed_without_foo
#  => can't modify frozen Array: ["Foo", "Bar", "Baz"] (FrozenError)
