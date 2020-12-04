### 配列 ###

p [].class  #=> Array

a = [1, 2, 3]
p a

b = [
  1,
  2,
  3,
]
p b

c = ['apple', 'orange', 'melon']
p c

d = [1, 'apple', 2, 'orange', 3, 'melon']
p d

e = [[10, 20, 30], [40, 50, 60], [70, 80, 90]]
p e

p a[0]  #=> 1
p a[1]  #=> 2
p a[2]  #=> 3

p a[100]  #=> nil

p a.size    #=> 3
p a.length  #=> 3
