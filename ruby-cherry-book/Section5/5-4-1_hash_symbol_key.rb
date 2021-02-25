### ハッシュのキーにシンボルを使う ###

# ハッシュのキーをシンボルにする
currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }
p currencies
#  => {:japan=>"yen", :us=>"dollar", :india=>"rupee"}

# シンボルのキーを指定して値を取り出す
p currencies[:us]  #=> "dollar"

# キーと値の組み合わせを追加
currencies[:italy] = 'euro'


# "シンボル: 値" の記法
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
#  => {:japan=>"yen", :us=>"dollar", :india=>"rupee"}
p currencies[:us]  #=> "dollar"


# キーも値もシンボル
currencies = { japan: :yen, us: :dollar, india: :rupee }
p currencies
#  => {:japan=>:yen, :us=>:dollar, :india=>:rupee}
