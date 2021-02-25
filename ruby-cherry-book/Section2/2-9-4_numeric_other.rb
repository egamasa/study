### 数値クラス その他 ###

p 10.class
p 9999999999999999999.class
p 1.5.class

# Ruby 2.3以前
# => Fixnum
#    Bignum
#    Float

# Ruby 2.4以降
# => Integer
#    Integer
#    Float


# 有理数リテラル
r = 2 / 3r
p r
p r.class
# => (2/3)
#    Rational

# 文字列→有理数 変換
r = '2/3'.to_r
p r
p r.class
# => (2/3)
#    Rational

# 複素数リテラル
c = 0.3 - 0.5i
p c
p c.class
# => (0.3-0.5i)
#    Complex

# 文字列→複素数 変換
c = '0.3-0.5i'.to_c
p c
p c.class
# => (0.3-0.5i)
#    Complex
