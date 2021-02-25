# ネストなしで名前付き空間のクラスを定義する

## 先にモジュールを定義
module Baseball
end

## "モジュール名::クラス名" でクラスを定義
class Baseball::Second
  def initialize(player, uniform_number)
    @player = player
    @uniform_number = uniform_number
  end
end

p Baseball::Second.new('Alice', 13)
#=> #<Baseball::Second:0x000000000272ab30 @player="Alice", @uniform_number=13>
