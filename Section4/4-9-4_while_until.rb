### while/until （条件が真/偽の間繰り返し） ###

a = []
while a.size < 5
  a << 1
end
p a
#=> [1, 1, 1, 1, 1]

a = []
# do で条件式を区切ると1行で書ける
while a.size < 5 do a << 1 end
p a
#=> [1, 1, 1, 1, 1]

a = []
# whileを修飾子として後置
a << 1 while a.size < 5
p a
#=> [1, 1, 1, 1, 1]


# どんな条件でも最低1回は実行する
a = []
## 常にfalse → 実行されない
while false
  a << 1
end
p a  #=> []

## begin...end で囲む → falseでも最低1回は実行される
begin
  a << 1
end while false
p a  #=> [1]


a = [10, 20, 30, 40, 50]
until a.size <= 3
  a.delete_at(-1)
end
p a  #=> [10, 20, 30]
