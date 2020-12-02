# ==メソッドの戻り値==

# 最後に評価された式がメソッドの戻り値となる（return不要）

def greeting(coutry)
  if coutry == 'japan'
    'こんにちは'
  else
    'Hello'
  end
end
p greeting('japan')  # => "こんにちは"
p greeting('us')  # => "Hello"


# メソッドを途中で脱出する場合、意図的にreturnを使う
def greeting_return(coutry)
  return 'countryを入力してください' if coutry.nil?

  if coutry == 'japan'
    'こんにちは'
  else
    'Hello'
  end
end
p greeting_return(nil)  # => "countryを入力してください"
p greeting_return('japan')  # => "こんにちは"
