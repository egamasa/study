# メソッド探索の順序

module A
  def to_s
    "<A> #{super}"
  end
end

module B
  def to_s
    "<B> #{super}"
  end
end

class Product
  def to_s
    "<Product> #{super}"
  end
end

class DVD < Product
  include A
  include B

  def to_s
    "<DVD> #{super}"
  end
end


dvd = DVD.new
p dvd.to_s
#  => "<DVD> <B> <A> <Product> #<DVD:0x0000000001c9a350>"

# クラス・モジールの探索順
p DVD.ancestors
#  => [DVD, B, A, Product, Object, Kernel, BasicObject]

# 存在しないメソッド
## → BasicObjectまで探索しても見つからなければエラー
p dvd.foo
#  => undefined method `foo' for #<DVD:0x00000000023d28c0> (NoMethodError)
