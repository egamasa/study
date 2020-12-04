### 配列を使った多重代入 ###

a, b = [1, 2]
p a  #=> 1
p b  #=> 2

# 右辺の要素が少なければnilで埋まる
c, d = [10]
p c  #=> 10
p d  #=> nil

# 右辺の要素が多い場合は切り捨て
e, f = [100, 200, 300]
p e  #=> 100
p f  #=> 200


# divmod :商と余りを配列で返す
p 14.divmod(3)  #=> [4, 2]

quo_rem = 14.divmod(3)
p "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}"
#=> "商=4, 余り=2"

quotient, remainder = 14.divmod(3)
p "商=#{quotient}, 余り=#{remainder}"
#=> "商=4, 余り=2"
