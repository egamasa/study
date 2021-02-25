### for文 ###

numbers = [1, 2, 3, 4]
sum = 0
for n in numbers
  sum += n
end
p sum  #=> 10

sum = 0
# doで1行で書く
for n in numbers do sum += n end
p sum  #=> 10

# Rubyでは基本的に for より each を使う
sum = 0
numbers.each do |n|
  sum += n
end
p sum  #=> 10


# each と for の違い

## each :ブロック引数・ブロック内変数をブロック外から参照できない
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p n
#  => undefined local variable or method `n' for main:Object (NameError)
p sum_value
#  => undefined local variable or method `sum_value' for main:Object (NameError)

## for :for内の変数を外からも参照できる
sum = 0
for n in numbers
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p n  #=> 4
p sum_value  #=> 40
