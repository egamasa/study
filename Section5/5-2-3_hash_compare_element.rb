# ハッシュの同値比較
a = { 'x' => 1, 'y' => 2, 'z' => 3 }

b = { 'x' => 1, 'y' => 2, 'z' => 3 }
p a == b  #=> true

c = { 'z' => 3, 'x' => 1, 'y' => 2 }
p a == c  #=> true

d = { 'x' => 10, 'y' => 2, 'z' => 3 }
p a == d  #=> false

e = { 'x' => 1, 'y' => 2 }
p a == e  #=> false


# ハッシュの要素数の取得
p ({}.size)  #=> 0
p ({ 'x' => 1, 'y' => 2, 'z' => 3 }.size)  #=> 3


# ハッシュの要素の削除
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
## deleteメソッドの返り値は削除した要素の値
p currencies.delete('japan')
#  => "yen"
p currencies
#  => {"us"=>"dollar", "india"=>"rupee"}

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
## 指定したキーが存在しない場合のdeleteメソッドの返り値はnil
p currencies.delete('italy')
#  => nil

## 指定したキーが存在しない場合の返り値を指定
p currencies.delete('italy') { |key| "Not found: #{key}" }
#  => "Not found: italy"
