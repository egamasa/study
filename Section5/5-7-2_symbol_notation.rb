### %記法でシンボルやシンボルの配列を作成 ###

# 区切り文字を ! にする
p %s!ruby is fun!
#  => :"ruby is fun"

# 区切り文字を () にする
p %s(ruby is fun)
#  => :"ruby is fun"


# シンボルの配列を作成
p %i(apple orange melon)
#  => [:apple, :orange, :melon]

name = 'Alice'

## %i = シングルクォート
p %i(hello\ngood-bye #{name.upcase})
#  => [:"hello\\ngood-bye", :"\#{name.upcase}"]

## %I = ダブルクォート（改行、式展開が有効）
p %I(hello\ngood-bye #{name.upcase})
#  => [:"hello\ngood-bye", :ALICE]
