### 繰り返し処理での break と return の違い ###

# break :繰り返し処理からの脱出
def calc_with_break
  numbers = [1, 2, 3, 4, 5, 6]
  target = nil
  numbers.shuffle.each do |n|
    target = n
    break if n.even?
  end
  target * 10
end
p calc_with_break  #=> 60

# return :メソッドからの脱出
def calc_with_return
  numbers = [1, 2, 3, 4, 5, 6]
  target = nil
  numbers.shuffle.each do |n|
    target = n
    return if n.even?
  end
  target * 10
end
## 「target * 10」 が実行されない
p calc_with_return  #=> nil
