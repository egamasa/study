### "!"で終わるメソッド ###

a = 'ruby'

p a.upcase  #=> "RUBY"
p a         #=> "ruby"

p a.upcase!  #=> "RUBY"
p a          #=> "RUBY


# "!"で終わるメソッドを定義する（破壊的メソッド）
def reverse_upcase!(s)
  s.reverse!.upcase!
end
s = 'ruby'
reverse_upcase!(s)
p s  #=> "YBUR"
