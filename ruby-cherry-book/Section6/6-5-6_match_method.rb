### match? メソッド ###

# Ruby 2.4以降
# 組み込み変数やRegexp.last_matchの返り値を書き換えないので高速

# マッチすればtrueを返す
p /\d{3}-\d{4}/.match?('123-4567')  #=> true

# 組み込み変数やRegexp.last_matchでは取得できない
p $~  #=> nil
p Regexp.last_match  #=> nil

# 文字列と正規表現の入れ換えはOK
p '123-4567'.match?(/\d{3}-\d{4}/)  #=> true
