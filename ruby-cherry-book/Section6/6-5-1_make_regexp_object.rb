### 正規表現オブジェクトの作成 ###

p Regexp.new('\d{3}-\d{4}').class  #=> Regexp

# %記法

## エスケープが必要
p /http:\/\/example\.com/
#  => /http:\/\/example\.com/

## 区切り文字を ! にする
p %r!http://example.\com!
#  => /http:\/\/example.\com/

## 区切り文字を {} にする
p %r{http://example.\com}
#  => /http:\/\/example.\com/


# 変数展開
pattern = '\d{3}-\d{4}'
p ('123-4567' =~ /#{pattern}/)  #=> 0
p ('abc:123-4567' =~ %r{#{pattern}})  #=> 4
