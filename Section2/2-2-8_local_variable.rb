# ==ローカル変数==

# 宣言＆代入
s = 'Hello'
n = 123 * 2

# 宣言のみは不可
# x
#   => NameError (undefined local variable or method `x' for main:Object)


# 変数名はスネークケース
special_price = 200
special_price_2 = 300

# 変数名は数字では始められない
# 2_special_price = 300
#   => SyntaxError ((irb):4: trailing `_' in number)


# 変数名は漢字等も一応使える
特別価格 = 200
個数 = 2
p 特別価格 * 個数
# => 400


# 多重代入（基本的に使わない）
a, b = 1, 2
p a  # => 1
p b  # => 2

c, d = 10
p c  # => 10
p d  # => nil

e, f = 100, 200, 300
p e  # => 100
p f  # => 200

x = y = 50
p x  # => 50
p y  # => 50
