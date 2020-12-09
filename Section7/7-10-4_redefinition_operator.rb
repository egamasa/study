# 演算子の挙動の再定義

class Product
  attr_reader :code, :name

  def initialize(code, name)
    @code = code
    @name = name
  end

  # codeが同じならば同じものとみなすよう、== の挙動を再定義する
  def ==(other)
    if other.is_a?(Product)
      code == other.code
    else
      false
    end
  end
end


a = Product.new('A-0001', 'A great movie')
b = Product.new('B-0001', 'An awesome film')
c = Product.new('A-0001', 'A great movie')

# 再定義していない場合（オブジェクトIDが一致せずfalse）
p a == b  #=> false
p a == c  #=> false

# 再定義した場合（codeが一致すればtrue）
p a == b  #=> false
p a == c  #=> true

## Productクラスのオブジェクトでないものとの比較は常にfalse
p a == 1  #=> false
p a == 'a'  #=> false
