### デフォルトで継承されるObjectクラス ###

class User
end

# クラスを定義すると、デフォルトでObjectクラスを継承する
p User.superclass  #=> Object

user = User.new

# Objectクラスで定義されているメソッドが呼び出せる
p user.to_s  #=> "#<User:0x0000000001df6de8>"
p user.nil?  #=> false

# Objectクラスから継承したメソッド一覧
p user.methods.sort
