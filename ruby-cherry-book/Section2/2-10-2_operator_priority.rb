### and, or, not の優先度 ###

t1 = true
f1 = false

p t1 and f1  # => true
p t1 or f1  # => true
p (not t1)  # => false

# 優先度 ! > ||
p !f1 || t1  # => true
# 優先度 not > ||
p (not f1 || t1)  # => false

# 優先度 || < &&
p t1 || t1 && f1  # => true
# 優先度 or == and
p (t1 or t1 and f1)  # => false


# and / or を制御フローに使う
def greeting(country)
  # countryがfalse値ならreturnする
  country or return 'countryを入力してください'

  if country == 'japan'
    'こんにちは'
  else
    'Hello'
  end
end
p greeting(nil)
# => "countryを入力してください"
p greeting(false)
# => "countryを入力してください"
p greeting('japan')  # => "こんにちは"
p greeting('')  # => "Hello"
