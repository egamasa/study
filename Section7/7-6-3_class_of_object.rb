### オブジェクトのクラスを確認する ###

class User
end

user = User.new
p user.class  #=> User

# instance_of? メソッド [true/false]
## 同じクラスかどうか
p user.instance_of?(User)  #=> true
p user.instance_of?(String)  #=> false
p user.instance_of?(Object)  #=> false

# is_a? メソッド [true/false]
## 継承（is-a）関係にあるかどうか
p user.is_a?(User)  #=> true
p user.is_a?(Object)  #=> true
p user.is_a?(BasicObject)  #=> true
p user.is_a?(String)  #=> false
