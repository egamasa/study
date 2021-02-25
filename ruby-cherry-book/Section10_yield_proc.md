# 10章 yield と Proc

## yieldでブロック処理呼び出し

- `yield` を記述した箇所でブロックが呼び出される
- `block_given?` メソッドでブロックの有無を判定
- 引数の数の過不足には寛容

```ruby
def greeting
  puts 'おはよう'

  # ブロックの有無を確認してからyieldで呼び出し
  yield 'こんにちは' if block_given?

  puts 'こんばんは'
end

greeting do |text|
  puts text
end
# => おはよう
#    こんにちは
#    こんばんは
```


## ブロックを引数として受け取る

- 引数の前に `&` を付ける
- `call` メソッドでブロック処理呼び出し
- `block_given?` / `nil?` でブロックの有無を判定

```ruby
def greeting(&block)
  puts 'おはよう'

  # ブロックの有無を確認してからcallで呼び出し
  block.call('こんにちは') unless block.nil?

  puts 'こんばんは'
end

greeting do |text|
  puts text * 2
end
# => おはよう
#    こんにちはこんにちは
#    こんばんは
```


## Procオブジェクト

- ブロック（何らかの処理・手続き）をオブジェクト化するクラス
- `Proc.new` do...end / `Proc.new` {} / Kernel.#proc で生成
- `call` メソッドで実行

```ruby
# do...end
add_proc = Proc.new do |a = 0, b = 0|
  a + b
end
# {}
add_proc = Proc.new { |a = 0, b = 0| a + b }
# Kernelモジュール procメソッド
add_proc = proc { |a = 0, b = 0| a + b }

add_proc.call(10, 20)  # => 30
```


## Procオブジェクトを引数に渡す

- ブロックとして渡すには、引数の前に `&` を付ける
  - メソッドが受け取れるブロックは1個のみ
- 通常の引数として渡すには、`&` を付けない
  - メソッドで複数個受け取れる

```ruby
def greeting(argv_1, argv_2, &block)
  p argv_1.call('おはよう')
  p block.call('こんにちは')
  p argv_2.call('こんばんは')
end

repeat_proc = Proc.new { |text| text * 2 }
# 同一のProcオブジェクトを、通常の引数とブロックの形式でそれぞれ渡す
greeting(repeat_proc, repeat_proc, &repeat_proc)
# => "おはようおはよう"
#    "こんにちはこんにちは"
#    "こんばんはこんばんは"
```


## Lambda（ラムダ）

- `->` 構文 / `lambda` メソッドで生成
- Procオブジェクトよりも引数チェックが厳密
  - 引数の数に過不足があるとエラー
- `lambda?` メソッドで判定できる

```ruby
# ->構文
add_lambda = ->(a, b) { a + b }
# lambdaメソッド
add_lambda = lambda { |a, b| a + b }

add_lambda.call(10,20)  # => 30

add_proc = Proc.new { |a, b| a + b }
add_proc.lambda?  # => false
add_lambda.lambda?  # => true
```
