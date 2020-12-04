### do...end と {} ###

numbers = [1, 2, 3, 4]

sum = 0
numbers.each do |n| sum += n end
p sum  #=> 10

# do...end の代わりに {} を使う
sum = 0
numbers.each { |n| sum += n }
p sum  #=> 10

# 改行も可能
sum = 0
numbers.each { |n|
  sum += n
}
p sum  #=> 10
