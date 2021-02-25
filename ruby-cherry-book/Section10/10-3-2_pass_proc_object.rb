# Procオブジェクトをブロックの代わりに渡す

def greeting(&block)
  puts block.class

  puts 'おはよう'
  text = block.call('こんにちは')  # ブロック実行
  puts text
  puts 'こんばんは'
end

# Procオブジェクトを作成し、ブロックとして渡す
repeat_proc = Proc.new { |text| text * 2 }
greeting(&repeat_proc)
# => Proc
#    おはよう
#    こんにちはこんにちは
#    こんばんは

# &無しで渡すと、ブロックでなく通常の引数とみなされるのでエラー
greeting(repeat_proc)
# => `greeting': wrong number of arguments (given 1, expected 0) (ArgumentError)
