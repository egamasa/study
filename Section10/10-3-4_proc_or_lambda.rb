# Proc.newとラムダの違い

# Procオブジェクトの作成方法（4種類）

## [1] Proc.new / [2] pricメソッド
Proc.new { |a, b| a + b }
proc { |a, b| a + b }

## [3] -> 構文
->(a, b) { a + b }
->a, b { a + b }  # ()は省略可能
-> { 'Hello!' }  # 引数なし
->(a, b) {
  a + b
}  # {}内は改行可能
->(a, b) do
  a + b
end  # {}の代わりにdo..endも使える
->(a = 0, b = 0) { a + b }  # 引数のデフォルト値を設定

## [4] lambdaメソッド
lambda { |a, b| a + b }


# [3][4](lambda) は [1][2](Proc.new) よりも引数のチェックが厳密

## [1] Proc.new の場合
add_proc = Proc.new { |a, b| a.to_i + b.to_i }
p add_proc.call(10)  # => 10
p add_proc.call(10, 30, 100)  # => 40

## [3] lambda の場合
add_lambda = ->(a, b) { a.to_i + b.to_i }
p add_lambda.call(10)
# => wrong number of arguments (given 1, expected 2) (ArgumentError)
p add_lambda.call(10, 30, 100)
# => wrong number of arguments (given 3, expected 2) (ArgumentError)
