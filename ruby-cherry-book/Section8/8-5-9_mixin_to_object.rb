# オブジェクトに直接ミックスインする

module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

s = 'abc'

# そのままではlogメソッドは呼び出せない
# s.log('Hello.')
# => undefined method `log' for "abc":String (NoMethodError)

# オブジェクトに直接ミックスイン
s.extend(Loggable)

# Loggableモジュールのメソッドが呼び出せる
s.log('Hello.')  #=> [LOG] Hello.
