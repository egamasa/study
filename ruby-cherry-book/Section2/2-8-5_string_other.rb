### 文字列生成 その他 ###

p 123.to_s
# => "123"

p [10, 20, 30].join
# => "102030"

p 'Hi' * 10
# => "HiHiHiHiHiHiHiHiHiHi"

p String.new('hello')
# => "hello"

# Unicodeコードポイントから文字列生成
p "\u3042\u3044\u3046"
# => "あいう"
