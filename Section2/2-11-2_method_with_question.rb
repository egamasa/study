### "?"で終わるメソッド ###

# 空文字か
p ''.empty?     #=> true
p 'abc'.empty?  #=> false

# 文字列に含むか
p 'watch'.include?('at')  #=> true
p 'watch'.include?('in')  #=> false

# 奇数か
p 1.odd?  #=> true
p 2.odd?  #=> false

# 偶数か
p 1.even?  #=> false
p 2.even?  #=> true

# オブジェクトがnilか
p nil.nil?    #=> true
p false.nil?  #=> false
p ''.nil?     #=> false
p 0.nil?      #=> false


# "?"で終わるメソッドを定義する（true/false を返すメソッド）
def multiple_of_three?(n)
  n % 3 == 0
end
p multiple_of_three?(4)  #=> false
p multiple_of_three?(5)  #=> false
p multiple_of_three?(6)  #=> true
