### ||= での自己代入 ###

# x ||= n
## 変数xがfalse値（nil/false）であればnを代入、そうでなければ変数xの値そのまま
## 「x = x || n」と同義

limit = nil

# 「limit = limit || 10」と同義
limit ||= 10
p limit  #=> 10

# 「limit = limit || 20」と同義
limit ||= 20
p limit  #=> 10
