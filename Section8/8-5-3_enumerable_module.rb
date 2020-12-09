# Enumerable モジュール
## 繰り返し処理が可能なクラス（Array, Hash, Range, ...）にincludeされているモジュール

## 主なメソッド: map / select / find / count

p Array.include?(Enumerable)  #=> true
p Hash.include?(Enumerable)  #=> true
p Range.include?(Enumerable)  #=> true

# map
p [1, 2, 3].map { |n| n * 10 }  #=> [10, 20, 30]
p ({ a: 1, b: 2, c: 3 }.map { |k, v| [k, v * 10] })  #=> [[:a, 10], [:b, 20], [:c, 30]]
p (1..3).map { |n| n * 10 }  #=> [10, 20, 30]

# count
p [1, 2, 3].count  #=> 3
p ({ a: 1, b: 2, c: 3 }.count)  #=> 3
p (1..3).count  #=> 3
