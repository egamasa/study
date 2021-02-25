# Rubyのトップレベル
## → mainという名前のObject

p self  # => main
p self.class  # => Object

class User
  p self  # => User
  p self.class  # => Class
end
