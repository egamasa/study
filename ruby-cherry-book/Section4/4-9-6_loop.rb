### loop（無限ループ） ###

while true
  # 処理
end

loop  do
  # 処理
end


numbers = [1, 2, 3, 4, 5]

loop do
  n = numbers.sample
  puts n
  break if n == 5
end
## loop :ループ内変数をループ外から参照できない
# p n
#  => undefined local variable or method `n' for main:Object (NameError)

while true
  n = numbers.sample
  puts n
  break if n == 5
end
## while :ループ内変数をループ外から参照できる
p n  #  => 5
