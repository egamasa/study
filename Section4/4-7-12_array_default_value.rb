### 配列に初期値を設定 ###

# 配列の生成
a = Array.new
p a
#=> []

# 要素数5の配列
a = Array.new(5)
p a
#=> [nil, nil, nil, nil, nil]

# 要素数5、各要素の初期値0の配列
a = Array.new(5, 0)
p a
#=> [0, 0, 0, 0, 0]

# ブロックで初期値を設定
a = Array.new(10) { |n| n % 3 + 1 }
p a
#=> [1, 2, 3, 1, 2, 3, 1, 2, 3, 1]
