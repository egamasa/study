### Rubyの繰り返し処理 ###

numbers = [1, 2, 3, 4]
sum = 0

# do...end がブロック
numbers.each do |n|
  sum += n
end

p sum  #=> 10
