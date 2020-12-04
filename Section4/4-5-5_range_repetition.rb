### Rangeオブジェクトで繰り返し処理 ###

sum = 0
# Rangeオブジェクトに対してeachメソッド呼び出し
(1..4).each { |n| sum += n }
p sum  #=> 10

numbers = []
# stepメソッドでは間隔の指定が可能
(1..10).step(2) { |n| numbers << n }
p numbers  #=> [1, 3, 5, 7, 9]
