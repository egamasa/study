### Regexp.last_match でキャプチャを取得 ###

text = '私の誕生日は1977年7月17日です。'

# =~ を使うと、Regexp.last_match でマッチ結果を取得できる
text =~ /(\d+)年(\d+)月(\d+)日/

# MatchDataオブジェクト
p Regexp.last_match
#  => #<MatchData "1977年7月17日" 1:"1977" 2:"7" 3:"17">

# マッチ文字列全体
p Regexp.last_match(0)  #=> "1977年7月17日"

# 1～3番目のキャプチャ
p Regexp.last_match(1)  #=> "1977"
p Regexp.last_match(2)  #=> "7"
p Regexp.last_match(3)  #=> "17"

# 最後のキャプチャ
p Regexp.last_match(-1)  #=> "17"
