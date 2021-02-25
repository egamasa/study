# Comparable モジュール
## 比較演算

## 主なメソッド: < / <= / == / > / >= / between?

p 2 > 1   #=> true
p 2 <= 1  #=> false
p 2 == 1  #=> false

## 文字列は文字コードの大小で比較される
p 'abc' > 'xyz'   #=> false
p 'abc' <= 'xyz'  #=> true
p 'abc' == 'xyz'  #=> false


# <=> :UFO演算子
p 2 <=> 1      #=> 1
p 2 <=> 2      #=> 0
p 1 <=> 2      #=> -1
p 2 <=> 'abc'  #=> nil

p 'xyz' <=> 'abc'  #=> 1
p 'abc' <=> 'abc'  #=> 0
p 'abc' <=> 'xyz'  #=> -1
p 'abc' <=> 123    #=> nil


# クラスにComparableモジュールをincludeして使う
class Tempo
  include Comparable

  attr_reader :bpm

  def initialize(bpm)
    @bpm = bpm
  end

  def <=>(other)
    if other.is_a?(Tempo)
      # 比較
      bpm <=> other.bpm
    else
      # 比較できない場合はnil
      nil
    end
  end

  def inspect
    "#{bpm}bpm"
  end
end

p t_120 = Tempo.new(120)  #=> 120bpm
p t_180 = Tempo.new(180)  #=> 180bpm

p t_120 > t_180  #=> false
p t_120 <= t_180  #=> true
p t_120 == t_180  #=> false

tempos = [Tempo.new(180), Tempo.new(60), Tempo.new(120)]
# 内部では<=>でソートを行う
p tempos.sort
#  => [60bpm, 120bpm, 180bpm]
