# begin/endを省略するrescue修飾子

# 例外が発生しない
# → 元の処理の値が返る
p (1 / 1 rescue 0)  # => 1

# 例外が発生する
# → rescue修飾子の値が返る
p (1 / 0 rescue 0)  # => 0


require 'date'

def to_date(string)
  begin
    # 文字列をパース
    Date.parse(string)
  rescue ArgumentError
    # 例外発生時はnilを返す
    nil
  end
end

# 上記メソッドをrescue修飾子で書き換える
def to_date(string)
  Date.parse(string) rescue nil
end

p to_date('2017-01-01')
# => #<Date: 2017-01-01 ((2457755j,0s,0n),+0s,2299161j)>
p to_date('abcdef')
# => nil
