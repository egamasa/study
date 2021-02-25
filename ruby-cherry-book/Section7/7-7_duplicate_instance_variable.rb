# インスタンス変数名の重複

class Parent
  def initialize
    @first = 1
    @second = 2
    @third = 3
  end

  def number
    "#{@first}.#{@second}.#{@third}"
  end
end

class Child < Parent
  def initialize
    super
    @hour = 6
    @minute = 30
    # スーパークラスにも存在するインスタンス変数を使用してしまった場合
    @second = 59
  end

  def time
    "#{@hour}:#{@minute}:#{@second}"
  end
end


parent = Parent.new
p parent.number  #=> "1.2.3"

child = Child.new
p child.time  #=> "6:30:59"

# @second がサブクラスで上書きされたため、予期しない結果となる
p child.number  #=> "1.59.3"
