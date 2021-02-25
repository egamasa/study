# ==論理演算子==

t1 = true
t2 = true
f1 = false
f2 = false

p t1 && t2  # true
p t1 && f1  # false

p t1 || f1  # true
p f1 || f2  # false

p t1 && t2 || f1 && f2  # true
p (t1 && t2) || (f1 && f2)  # true

p t1 && (t2 || f1) && f2  # false

p !t1  # false
p !f1  # true

p t1 && f1  # false
p !(t1 && f1)  #true
