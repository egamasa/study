numbers = [1, 2, 3, 4, 5, 6]

# find/detect
#   ブロックの戻り値が最初に真となった要素を返す
even_number = numbers.find { |n| n.even? }
p even_number  #=> 2
