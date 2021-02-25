### 組み込み変数でキャプチャを取得 ###

text = '私の誕生日は1977年7月17日です。'

# =~ を使うと、マッチ結果が組み込み変数に代入される
text =~ /(\d+)年(\d+)月(\d+)日/

# MatchDataオブジェクト
p $~
#  => #<MatchData "1977年7月17日" 1:"1977" 2:"7" 3:"17">

# マッチ文字列全体
p $&  #=> "1977年7月17日"

# 1～3番目のキャプチャ
p $1  #=> "1977"
p $2  #=> "7"
p $3  #=> "17"

# 最後のキャプチャ
p $+  #=> "17"
