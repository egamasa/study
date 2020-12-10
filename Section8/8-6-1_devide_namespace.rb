# 名前空間を分けて名前の衝突を防ぐ

module Baseball
  # Baseballモジュールに属するSecondクラス
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  # Clockモジュールに属するSecondクラス
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end


p Baseball::Second.new('Alice', 13)
#=> #<Baseball::Second:0x000000000122a820 @player="Alice", @uniform_number=13>

p Clock::Second.new(13)
#=> #<Clock::Second:0x000000000122a5f0 @digits=13>
