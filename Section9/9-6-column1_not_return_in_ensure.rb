# ensure節ではreturnを使わない

def some_method(n)
  begin
    1 / n
    'OK'
  rescue
    'error'
  ensure
    return 'ensure'
  end
end

# 正常終了でも例外発生でも、常に返り値がensure節でreturnした値となってしまう
p some_method(1)  # => "ensure"
p some_method(0)  # => "ensure"
