# 特異メソッド
## 特定のオブジェクトにのみ紐付くメソッド（オブジェクト単位でメソッドの挙動を変える）

alice = 'I am Alice.'
bob = 'I am Bob.'

# aliceのオブジェクトにのみshuffleメソッドを定義
def alice.shuffle
  chars.shuffle.join
end

## 下記コードでも定義できる
# class << alice
#   def shuffle
#     chars.shuffle.join
#   end
# end


p alice.shuffle  #=> "m. liaIcA e"
p bob.shuffle
#=> undefined method `shuffle' for "I am Bob.":String (NoMethodError)


# 数値, シンボルでは定義できない

n = 1
def n.foo
  'foo'
end
#=> can't define singleton (TypeError)

sym = :alice
def sym.bar
  'bar'
end
#=> can't define singleton (TypeError)
