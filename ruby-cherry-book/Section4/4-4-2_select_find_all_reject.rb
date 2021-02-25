numbers = [1, 2, 3, 4, 5, 6]

# select/find_all
#   ブロックの戻り値が 真 である要素だけを配列に集める
even_numbers = numbers.select { |n| n.even? }
p even_numbers  #=> [2, 4, 6]

# reject
#   ブロックの戻り値が 偽 である要素だけを配列に集める
non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
p non_multiples_of_three  #=> [1, 2, 4, 5]
