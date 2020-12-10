# トップレベルの同名クラスを参照する

# トップレベルのSecondクラス
class Second
  def initialize(player, uniform_number)
    @player = player
    @uniform_number = uniform_number
  end
end

module Clock
  # Clockモジュールに属するSecondクラス
  class Second
    def initialize(digits)
      @digits = digits

      # "::クラス名" でトップレベルのSecondクラスを呼び出す
      @baseball_second = ::Second.new('Clock', 10)
    end
  end
end


p Clock::Second.new(13)
#=> #<Clock::Second:0x0000000002672260 @digits=13, @baseball_second=#<Second:0x0000000002672210 @player="Clock", @uniform_number=10>>
