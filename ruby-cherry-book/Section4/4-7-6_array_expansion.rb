### 1つの配列を複数の引数として展開 ###

# Expect
#   a = [1, 2, 3]

# NG
a = []
b = [2,3]
a.push(1)
a.push(b)
p a  #=> [1, [2, 3]]

# splat展開
a = []
b = [2, 3]
a.push(1)
a.push(*b)
p a  #=> [1, 2, 3]
