### ハッシュを使った擬似キーワード引数 ###

def buy_burger(menu, options = {})
  p options
end

# どんなキーワードを指定してもエラーにならない
buy_burger('cheeese', drink: true, potato: true)
buy_burger('fish', salad: true)
#  => {:drink=>true, :potato=>true}
#  => {:salad=>true}
