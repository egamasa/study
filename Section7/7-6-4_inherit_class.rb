# 他のクラスを継承したクラスを作る

class Product
end

p Product.superclass  #=> Object


# Objectクラス以外のクラスを継承する
class DVD < Product
end

p DVD.superclass  #=> Product
