### シンボルと文字列の関係 ###

string = 'apple'
symbol = :apple

p string == symbol  #=> false
# p string + symbol
#=> `+': no implicit conversion of Symbol into String (TypeError)


# to_sym / intern 文字列→シンボル変換
p string.to_sym  #=> :apple
p string.intern  #=> :apple
p string.to_sym == symbol  #=> true
p string.intern == symbol  #=> true

# to_s / id2name シンボル→文字列変換
p symbol.to_s  #=> "apple"
p symbol.id2name  #=> "apple"
p string == symbol.to_s  #=> true
p string == symbol.id2name  #=> true
p string + symbol.to_s  #=> "appleapple"
p string + symbol.id2name  #=> "appleapple"


# 文字列とシンボルを同等に扱うメソッド
## respond_to? :文字列orシンボルで指定した名前のメソッドを呼び出せるか判定
p 'apple'.respond_to?('include?')  #=> true
p 'apple'.respond_to?(:include?)  #=> true

p 'apple'.respond_to?('foo_bar')  #=> false
p 'apple'.respond_to?(:foo_bar)  #=> false
