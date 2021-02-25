### ブロック引数とブロック内の変数 ###

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end
p sum  #=> 10


# ブロック引数自体を省略
numbers.each do
  sum += 1
end
p sum  #=> 14

# ブロック内変数
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p sum
#=> 64
# p sum_value
#  => undefined local variable or method `sum_value' for main:Object (NameError)

# ブロック内外で同一変数名を使った場合（基本的に同一変数名は避ける）
# ブロック内での優先度 ブロック内変数>ブロック外変数
sum = 0
sum_value = 100
numbers.each do |sum_value|
  sum += sum_value
end
p sum  #=> 10
