# ブロックローカル変数

numbers = [1, 2, 3, 4]
sum = 0

# ブロック外の sum とは別の sum を定義
numbers.each do |n; sum|
  sum = 10
  sum += n
  p sum
end
# ブロック内の sum
#=> 11
#   12
#   13
#   14

# ブロック外の sum（変更されない）
p sum
#=> 0
