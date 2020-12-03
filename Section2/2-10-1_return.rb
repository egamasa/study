###  && / || 戻り値と評価終了タイミング  ###

p 1 && 2 && 3  # => 3
p 1 && nil && 3  # => nil
p 1 && false && 3  # => false

p nil || false  # => false
p false || nil  # => nil
p nil || false || 2 || 3  # => 2
