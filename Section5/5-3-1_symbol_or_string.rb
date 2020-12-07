### シンボルと文字列 ###

p :apple.class  #=> Symbol
p 'apple'.class  #=> String

p :apple.object_id  #=> 1020508
p :apple.object_id  #=> 1020508
p :apple.object_id  #=> 1020508
p 'apple'.object_id  #=> 60
p 'apple'.object_id  #=> 80
p 'apple'.object_id  #=> 100

string = 'apple'
string.upcase!
p string  #=> "APPLE"

symbol = :apple
p symbol.upcase  #=> :APPLE
# シンボルの破壊的な変更はできない（イミュータブル）
symbol.upcase!
#  => undefined method `upcase!' for :apple:Symbol (NoMethodError)
