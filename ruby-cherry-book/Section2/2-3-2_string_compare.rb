# ==文字列の比較==

p 'ruby' == 'ruby'
# => true
p 'ruby' == 'Ruby'
# => false
p 'ruby' != 'perl'
# => true
p 'ruby' != 'ruby'
# => false

p 'a' < 'b'
# => true
p 'a' < 'A'
# => false
p 'a' > 'A'
# => true
p 'abc' < 'def'
# => true
p 'abc' < 'ab'
# => false
p 'abc' < 'abcd'
# => true
p 'あいうえお' < 'かきくけこ'
# => true
