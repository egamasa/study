# 正規表現のキャプチャ

text = '私の誕生日は1977年7月17日です。'

# マッチすると、MatchDataオブジェクトが返る
m = /(\d+)年(\d+)月(\d+)日/.match(text)
p m  #=> #<MatchData "1977年7月17日" 1:"1977" 2:"7" 3:"17">

## マッチ部分全体
p m[0]  #=> "1977年7月17日"

## 1番目のキャプチャ
p m[1]  #=> "1977"

## 2番目のキャプチャを起点に2個
p m[2, 2]  #=> ["7", "17"]

## 最後のキャプチャ
p m[-1]  #=> "17"

## Rangeでキャプチャ取得
p m[1..3]  #=> ["1977", "7", "17"]


# マッチしなければ、nilが返る
p /(\d+)年(\d+)月(\d+)日/.match('foo')  #=> nil

# Stringクラス・Regexpクラスの双方にmatchメソッドが存在
m = text.match(/(\d+)年(\d+)月(\d+)日/)
p m  #=> #<MatchData "1977年7月17日" 1:"1977" 2:"7" 3:"17">


# マッチ判定とローカル変数への代入を同時に行う
if m = text.match(/(\d+)年(\d+)月(\d+)日/)
  puts "マッチしました"
else
  puts "マッチしませんでした"
end
#  => マッチしました
