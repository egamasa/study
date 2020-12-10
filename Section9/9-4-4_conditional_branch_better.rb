# 例外処理よりも条件分岐を使う
# → 予測できる例外は条件分岐で処理する方が良い

require 'date'

def convert_heisei_to_date(heisei_text)
  m = heisei_text.match(/平成(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
  year = m[:jp_year].to_i + 1988
  month = m[:month].to_i
  day = m[:day].to_i

  ## 例外処理
  # begin
  #   Date.new(year, month, day)
  # rescue ArgumentError
  #   nil
  # end

  # 例外処理を使わず、引数をチェックしてif分岐
  if Date.valid_date?(year, month, day)
    Date.new(year, month, day)
  else
    nil
  end
end

p convert_heisei_to_date('平成28年12月31日')
# => #<Date: 2016-12-31 ((2457754j,0s,0n),+0s,2299161j)>
p convert_heisei_to_date('平成28年99月99日')
# => nil
