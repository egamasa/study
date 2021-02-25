### next（次の繰り返し処理へ進む） ###

numbers = [1, 2, 3, 4, 5]

numbers.each do |n|
  next if n.even?
  puts n
end
#=> 1
#   3
#   5


# while, until, for でも使える
i = 0
while i < numbers.size
  n = numbers[i]
  i += 1
  next if n.even?
  puts n
end
#=> 1
#   3
#   5


# 入れ子の繰り返し処理では、一番内側のループで次の処理へ進む
fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3, 4]
fruits.each do |fruit|
  numbers.each do |n|
    next if n.even?
    puts "#{fruit}, #{n}"
  end
end
#=> apple, 1
#   apple, 3
#   melon, 1
#   melon, 3
#   orange, 1
#   orange, 3
