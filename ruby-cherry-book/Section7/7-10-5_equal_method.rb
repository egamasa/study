### 等値を判断するメソッド・演算子 ###

# equal? :全く同じインスタンスか（オブジェクトIDの一致）
a = 'abc'
b = 'abc'
c = a
p a.equal?(b)  #=> false
p a.equal?(c)  #=> true


# == :オブジェクトの内容が等しいか
p 1 == 1.0  #=> true
p 1 == '1'  #=> false


# eql? :ハッシュのキーとして、2つのオブジェクトが等しいか
h = { 1 => 'Integer', 1.0 => 'Float' }
p h[1]  #=> "Integer"
p h[1.0]  #=> "Float"

## ハッシュ上で、1 と 1.0 は別のキー
p 1.eql?(1.0)  #=> false


# === :case文のwhen節の内部処理
text = '03-1234-5678'

case text
when /^\d{3}-\d{4}$/
  puts '郵便番号です'
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
  puts '日付です'
when /^\d+-\d+-\d+$/
  puts '電話番号です'
end
#  => 電話番号です
