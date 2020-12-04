### 範囲 (Range) ###

1..5
1...5
'a'..'e'
'a'...'e'

p (1..5).class   #=> Range
p (1...5).class  #=> Range

range = 1..5
p range.include?(0)    #=>false
p range.include?(1)    #=>true
p range.include?(4.9)  #=>true
p range.include?(5)    #=>true
p range.include?(6)    #=>false

range = 1...5
p range.include?(0)    #=>false
p range.include?(1)    #=>true
p range.include?(4.9)  #=>true
p range.include?(5)    #=>false
p range.include?(6)    #=>false


# 1..5.include?(1)
#   => undefined method `include?' for 5:Integer (NoMethodError)
# (1..5).include?(1)  とする必要がある（../... の優先順位が低い）
