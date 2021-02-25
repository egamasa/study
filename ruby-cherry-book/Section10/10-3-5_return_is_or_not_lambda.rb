# lambda? メソッド :Proc.newかラムダかを判定する

## Proc.newの場合
add_proc = Proc.new { |a, b| a + b }
p add_proc.class    # => Proc
p add_proc.lambda?  # => false

## ラムダの場合
add_lambda = ->(a, b) { a + b }
p add_lambda.class    # => Proc
p add_lambda.lambda?  # => true
