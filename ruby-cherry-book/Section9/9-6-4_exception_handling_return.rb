# 例外処理と戻り値

#--- 正常終了 ---#
ret =
  begin
    'OK'
  rescue
    'error'
  ensure
    'ensure'
  end

# begin節の最後の式
p ret  # => "OK"


#--- 例外発生 ---#
ret =
  begin
    1 / 0
    'OK'
  rescue
    'error'
  ensure
    'ensure'
  end

# rescue節の最後の式
p ret  # => "error"


# 例外処理の戻り値をメソッドの戻り値とする
def some_method(n)
  begin
    1 / n
    'OK'
  rescue
    'error'
  ensure
    'ensure'
  end
end

p some_method(1)  # => "OK"
p some_method(0)  # => "error"
