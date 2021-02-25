### n以上m以下、n以上m未満 の判定 ###

# 不等号
def liquid?(temperature)
  0 <= temperature && temperature < 100
end

p liquid?(-1)   #=> false
p liquid?(0)    #=> true
p liquid?(99)   #=> true
p liquid?(100)  #=> false


# 範囲オブジェクト
def liquid_range?(temperature)
  (0...100).include?(temperature)
end

p liquid_range?(-1)   #=> false
p liquid_range?(0)    #=> true
p liquid_range?(99)   #=> true
p liquid_range?(100)  #=> false
