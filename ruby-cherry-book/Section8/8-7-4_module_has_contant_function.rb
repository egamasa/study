# モジュール関数や定数を持つモジュールの例

### Mathモジュール

# sqrt（平方根）メソッド
p Math.sqrt(2)  #=> 1.4142135623730951

class Calculator
  # Mathモジュールをmix-inして使う
  include Math

  def calc_sqrt(n)
    sqrt(n)
  end
end

calculator = Calculator.new
p calculator.calc_sqrt(2)  #=> 1.4142135623730951

# Mathモジュールの定数
p Math::E   #=> 2.718281828459045
p Math::PI  #=> 3.141592653589793


### Kernelモジュール

# puts / p （Kernelモジュールの特異メソッド）
Kernel.puts "Hello."  #=> Hello.
Kernel.p [1, 2, 3]    #=> [1, 2, 3]
