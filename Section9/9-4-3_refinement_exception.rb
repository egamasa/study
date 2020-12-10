# 例外処理の対象範囲・クラスを極力絞り込む

require 'date'

#--- NG ---#
def convert_heisei_to_date(heisei_text)
  begin
    # 範囲が広すぎる
    m = heisei_text.match(/平成(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
    year = m[:jp_year].to_i + 1988
    month = m[:month].to_i
    day = m[:day].to_i
    Date.new(year, month, day)
    # ここまで
  rescue
    nil
  end
end


#--- OK ---#
def convert_heisei_to_date(heisei_text)
  m = heisei_text.match(/平成(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
  year = m[:jp_year].to_i + 1988
  month = m[:month].to_i
  day = m[:day].to_i
  begin
    # 必要最小限の範囲
    Date.new(year, month, day)
  rescue ArgumentError  # エラークラスの指定
    nil
  end
end

p convert_heisei_to_date('平成28年12月31日')
# => #<Date: 2016-12-31 ((2457754j,0s,0n),+0s,2299161j)>
p convert_heisei_to_date('平成28年99月99日')
# => nil
