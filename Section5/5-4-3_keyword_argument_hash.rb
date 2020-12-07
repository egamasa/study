### メソッドのキーワード引数とハッシュ ###

# キーワード引数を設定
def buy_burger(menu, drink:, potato:)
end

# キーワード引数とデフォルト値を設定
def buy_burger_default(menu, drink: true, potato: true)
  p "#{menu} - drink:#{drink} potato:#{potato}"
end

buy_burger_default('cheese', drink: false, potato: true)
#=> "cheese - drink:false potato:true"
buy_burger_default('fish', potato: false)
#=> "fish - drink:true potato:false"
buy_burger_default('cheese')
#=> "cheese - drink:true potato:true"

# 引数の順序が入れ替わってもOK
buy_burger_default('fish', potato: false, drink: true)
#  => "fish - drink:true potato:false"

# ー存在しないキーワードはエラー
buy_burger_default('fish', salad: true)
#  => unknown keyword: :salad (ArgumentError)
