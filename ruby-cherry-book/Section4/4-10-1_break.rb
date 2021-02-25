### break（繰り返し脱出） ###

numbers = [1, 2, 3, 4, 5].shuffle

# each
numbers.each do |n|
  puts n
  break if n == 5
end

# while
i = 0
while i < numbers.size
  n = numbers[i]
  puts n
  break if n == 5
  i += 1
end


# while/for文の戻り値を指定
ret =
  while true
    break
  end
p ret  #=> nil

ret =
  while true
    break 123
  end
p ret  #=> 123


# 入れ子の繰り返し処理では、一番内側から脱出する
fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
fruits.each do |fruit|
  numbers.shuffle.each do |n|
    puts "#{fruit}, #{n}"
    ## numbersループから脱出、fruitsループは継続
    break if n == 3
  end
end
