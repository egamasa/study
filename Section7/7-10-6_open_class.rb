# オープンクラス
## クラスの継承に制限がなく、自由にサブクラスを定義可能

# Stringクラスを継承
class MyString < String
end

s = MyString.new('Hello')
p s  #=> "Hello"
p s.class  #=> MyString


# Arrayクラスを継承
class MyArray < Array
end

a = MyArray.new()
a << 1
a << 2
p a  #=> [1, 2]
p a.class  #=> MyArray


# Stringクラスにメソッドを追加
class String
  def shuffle
    chars.shuffle.join
  end
end

s = 'Hello, I am Alice.'
p s.shuffle  #=> "lc  AoaIllmi.eH,e "
