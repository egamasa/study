# オーバーロード（多重定義）
## 静的型付け言語で、引数の型・個数が違えば同じ名前のメソッドを複数定義できる
## → Rubyに概念は無いが、似た仕組みは作れる

# 整数以外に、文字列やnilも受け取れるようにする
## → to_i で数値に変換
def add_ten(n)
  n.to_i + 10
end

p add_ten(1)  #=> 11
p add_ten('2')  #=> 12
p add_ten(nil)  #=> 10


# 引数の個数を柔軟に変える
## → デフォルト値を設定
def add_numbers(a = 0, b = 0)
  a + b
end

p add_numbers  #=> 0
p add_numbers(1)  #=> 1
p add_numbers(1, 2)  #=> 2
