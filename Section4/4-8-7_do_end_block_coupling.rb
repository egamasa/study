# do...end と {} の結合度

# 結合度 do...end < {}

a = [1, 2, 3]

p a.delete(100)
#=> nil

a.delete(100) do
  p 'NG'
end
#=> "NG"

# p a.delete 100 { 'NG' }
#=> syntax error, unexpected '{', expecting end-of-input
# 「a.delete(100 {'NG'})」 と解釈されエラー

# 引数付きメソッド呼び出しで{}をブロックとして使う場合は、メソッド引数の()を省略できない
p a.delete(100) { 'NG' }
#=> "NG"
