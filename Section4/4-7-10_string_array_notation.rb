### %記法で文字列の配列を生成 ###

# 通常の配列生成
p ['apple', 'melon', 'orange']
#  => ["apple", "melon", "orange"]

# %記法
p %w(apple melon orange)
#  => ["apple", "melon", "orange"]

# 囲み文字を変更
p %w!apple melon orange!
#  => ["apple", "melon", "orange"]

# 改行で区切る
p %w(
  apple
  melon
  orange
)
#  => ["apple", "melon", "orange"]

# スペースをエスケープ
p %w(big\ apple small\ melon orange)
#  => ["big apple", "small melon", "orange"]

# 式展開、改行記号、タブ文字を含める(大文字W)
prefix = 'This is'
p %W(#{prefix}\ an\ apple small\nmelon orange)
#  => ["This is an apple", "small\nmelon", "orange"]
