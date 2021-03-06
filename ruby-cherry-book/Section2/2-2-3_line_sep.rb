# ==文の区切り==

# 改行毎に実行
p 1.to_s
p nil.to_s
p 10.to_s(16)
# => "1"
# => ""
# => "a"

# ";" で区切る
p 1.to_s; p nil.to_s; p 10.to_s(16)
# => "1"
# => ""
# => "a"

# "(" は改行しても続く
p 10.to_s(
  16
)
# => "a"

# "(" 無しで改行した場合は2文に分かれる
p 10.to_s
16

# "\" で明示的に複数行で書ける
p 10.to_s \
16
# => "a"

