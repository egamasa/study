### ハッシュ 要素の追加・変更・取得 ###

# 要素の追加
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies['italy'] = 'euro'
p currencies
#  => {"japan"=>"yen", "us"=>"dollar", "india"=>"rupee", "italy"=>"euro"}

# 値の上書き
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies['japan'] = '円'
p currencies
#  => {"japan"=>"円", "us"=>"dollar", "india"=>"rupee"}

# 値の取得
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
p currencies['india']  #=> "rupee"
p currencies['brazil']  #=> nil
