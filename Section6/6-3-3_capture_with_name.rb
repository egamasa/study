# キャプチャに名前を付ける

text = '私の誕生日は1977年7月17日です。'

m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
p m
#=> #<MatchData "1977年7月17日" year:"1977" month:"7" day:"17">

# シンボルで指定
p m[:year]  #=> "1977"
p m[:month]  #=> "7"
p m[:day]  #=> "17"

# 文字列で指定
p m['year']  #=> "1977"

# 連番で指定
p m[1]  #=> "1977"


# キャプチャ名称をローカル変数として使用
## "正規表現リテラル =~ 文字列"（逆では不可）
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  puts "#{year}/#{month}/#{day}"
end
#  => 1977/7/17

## 正規表現オブジェクトを変数に入れると使えない
regexp = /(?<year1>\d+)年(?<month1>\d+)月(?<day1>\d+)日/
if regexp =~ text
  puts "#{year1}/#{month1}/#{day1}"
end
#  => undefined local variable or method `year1' for main:Object (NameError)
