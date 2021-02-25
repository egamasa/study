# Procオブジェクトをブロックの代わりに渡す

def greeting(argv_1, argv_2, &block)
  puts block.class

  puts 'おはよう'
  p argv_1.call('おはよう')
  p block.call('こんにちは')
  p argv_2.call('こんばんは')
  puts 'こんばんは'
end

# Procオブジェクトを作成し、ブロックとして渡す
repeat_proc = Proc.new { |text| text * 2 }
greeting(repeat_proc, repeat_proc, &repeat_proc)
# => Proc
#    おはよう
#    こんにちはこんにちは
#    こんばんは

# &無しで渡すと、ブロックでなく通常の引数とみなされるのでエラー
greeting(repeat_proc)
# => `greeting': wrong number of arguments (given 1, expected 0) (ArgumentError)
