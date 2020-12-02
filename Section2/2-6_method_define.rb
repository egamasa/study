# ==メソッドの定義==

def add(a, b)
  a + b
end
p add(1, 2)  # => 3


# メソッド名はスネークケース
def hello_world
end

def _hello_world
end

def hello_world_2
end

# 数字で始まるメソッド名は不可
# def 2_hello_world
# end

# 日本語もメソッド名に一応使える
def あいさつする
  p 'こんにちは、世界。'
end
あいさつする  # => "こんにちは、世界。"
