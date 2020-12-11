# yieldを使ってブロックの処理を呼び出す
## 引数の過不足でエラーにはならない

def greeting
  puts 'おはよう'

  # ブロックの有無を確認してからyield呼び出し
  yield if block_given?

  puts 'こんばんは'
end

greeting do
  puts 'こんにちは'
end
# => おはよう
#    こんにちは
#    こんばんは

greeting
# => おはよう
#    こんばんは


def greeting
  puts 'おはよう'

  # ブロックに引数を渡し、戻り値を出力
  text = yield 'こんにちは'
  puts text

  puts 'こんばんは'
end

greeting do |text|
  text * 2
end
# => おはよう
#    こんにちはこんにちは
#    こんばんは


def greeting
  puts 'おはよう'

  # 2個の引数をブロックに渡す
  text = yield 'こんにちは', 12345
  puts text

  puts 'こんばんは'
end

greeting do |text|
  # ブロック引数が1個なので、2個目の引数は切り捨てられる
  text * 2
end
# => おはよう
#    こんにちはこんにちは
#    こんばんは


def greeting
  puts 'おはよう'

  # 1個の引数をブロックに渡す
  text = yield 'こんにちは'
  puts text

  puts 'こんばんは'
end

greeting do |text, other|
  # ブロック引数が2個なので、2個目の引数はnilで埋められる
  text * 2 + other.inspect
end
# => おはよう
#    こんにちはこんにちはnil
#    こんばんは
