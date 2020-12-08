### メソッド呼び出し時の{}の省略 ###

# 擬似キーワード引数あり
def buy_burger(menu, options = {})
  p options
end

buy_burger('fish', {'drink' => true, 'potato' => false})
#  => {"drink"=>true, "potato"=>false}

# 最後の引数がハッシュであれば、{}を省略できる
buy_burger('fish', 'drink' => true, 'potato' => false)
#  => {"drink"=>true, "potato"=>false}
