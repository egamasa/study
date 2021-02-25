# eval メソッド :文字列をRubyのコードとして実行

code = '[1, 2, 3].map { |n| n * 10 }'
p eval(code)
# => [10, 20, 30]


# `（バッククオート）リテラル :文字列をOSコマンドとして実行

puts `cat ./lib/fizz_buzz.rb`
# => def fizz_buzz(n)
#      if n % 15 == 0
#        'Fizz Buzz'
#      elsif n % 3 == 0
#        'Fizz'
#      elsif n % 5 == 0
#    ...

## %記法
puts %x{cat ./lib/fizz_buzz.rb}


# send メソッド :レシーバに対して指定文字列。シンボルのメソッドを実行

str = 'a,b,c'

## str.upcase と同義
p str.send(:upcase)  # => "A,B,C"

## str.split(',') と同義
p str.send('split', ',')  # => ["a", "b", "c"]
