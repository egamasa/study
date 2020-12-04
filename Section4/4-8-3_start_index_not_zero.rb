### 添字を0以外から開始させる ###

fruits = ['apple', 'orange', 'melon']

# with_index の引数で開始値を指定
fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}" }
#=> 1: apple
#   2: orange
#   3: melon

fruits.map.with_index(10) { |fruit, i| puts "#{i}: #{fruit}" }
#=> 10: apple
#   11: orange
#   12: melon
