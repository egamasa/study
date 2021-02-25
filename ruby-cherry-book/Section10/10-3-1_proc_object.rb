# Procオブジェクトの基礎
## ブロックをオブジェクト化するためのクラス

# 文字列を返すProcオブジェクトを作成
hello_proc = Proc.new do
  'Hello.'
end

## do...end/ {} どちらでもOK
hello_proc = Proc.new{ 'Hello.' }

# call メソッド :Procオブジェクトを実行
p hello_proc.call  # => "Hello."


# 引数付きProcオブジェクト
add_proc = Proc.new { |a, b| a + b }
p add_proc.call(10, 20)  # => 30

add_proc = Proc.new { |a = 0, b = 0| a + b }
p add_proc.call  # => 0
p add_proc.call(10)  # => 10
p add_proc.call(10, 20)  # => 30


# KernelモジュールのprocメソッドでProcオブジェクトを作成
add_proc = proc { |a, b| a + b }
