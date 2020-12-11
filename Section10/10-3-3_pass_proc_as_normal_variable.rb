# Procオブジェクトを通常の引数として渡す

def greeting(arrange_proc)  ## &を付けない
  puts arrange_proc.class

  puts 'おはよう'
  text = arrange_proc.call('こんにちは')
  puts text
  puts 'こんばんは'
end

repeat_proc = Proc.new { |text| text * 2 }
greeting(repeat_proc)  ## &を付けない
# => Proc
#    おはよう
#    こんにちはこんにちは
#    こんばんは


# 通常の引数（&無し）として扱えば、複数のProcを渡せる
# （ブロックとして（&付き）渡す場合は1個しか渡せない）
def greeting(proc_1, proc_2, proc_3)
  puts proc_1.call('おはよう')
  puts proc_2.call('こんにちは')
  puts proc_3.call('こんばんは')
end

shuffle_proc = Proc.new { |text| text.chars.shuffle.join }
repeat_proc = Proc.new { |text| text * 2 }
question_proc = Proc.new { |text| "#{text}?" }

greeting(shuffle_proc, repeat_proc, question_proc)
# => ようはお
#    こんにちはこんにちは
#    こんばんは?
