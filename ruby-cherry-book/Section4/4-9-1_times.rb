# timesメソッド

sum = 0
5.times { |n| sum += n }
p sum  #=> 10

# ブロック引数を省略（不要な場合）
sum = 0
5.times { sum += 1 }
p sum  #=> 5
