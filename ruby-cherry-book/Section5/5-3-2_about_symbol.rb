# 文字列のキー
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
p currencies['japan']  #=> "yen"

# シンボルのキー
currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }
p currencies[:japan]  #=> "yen"

p 'apple'.methods
p :apple.methods
