### 式(Expression)と文(Statement) ###

# Rubyのif文は「式」（値を返す）
a =
  if true
    '真です'
  else
    '偽です'
  end
p a  #=> "真です"

# メソッド定義も「式」（シンボルを返す）
b = def foo; end
p b  #=> :foo

# 値を返さず、変数へ代入できないのが「文」
