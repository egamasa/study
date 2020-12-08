### !! での真偽値の型変換 ###

# true / false のどちらかを確実に返す

p !!true   # => true
p !!0      # => true
p !!1      # => true
p !!""     # => true
p !!"abc"  # => true
p !!false  # => false
p !!nil    # => false
