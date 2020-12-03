### オブジェクトの参照 ###

# 異なるオブジェクト
a = 'hello'
b = 'hello'
p a.object_id  #=> 60
p b.object_id  #=> 80

# 代入…同じオブジェクトを参照するようになる
c = b
p c.object_id  #=> 80

# メソッドで受け取った引数も同一オブジェクト
def m(d)
  p d.object_id
end
m(c)  #=> 80

# equal? メソッドで同一オブジェクト判定
p a.equal?(b)  #=> false
p b.equal?(c)  #=> true


# c に破壊的メソッドを適用
def n!(e)
  e.upcase!
end
n!(c)

# c と b は同一オブジェクトID
p c  #=> "HELLO"
p b  #=> "HELLO"

# a のみ別オブジェクトIDなので影響を受けない
p a  #=> "hello"
