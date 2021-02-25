### ハッシュリテラルの{}とブロックの{} ###

# 基本的に、メソッド呼び出しで()を省略可能
puts('Hello')  #=> Hello
puts 'Hello'  #=> Hello


def buy_burger_1(options = {}, menu)
  p options
end

# 第1引数にハッシュを渡す場合、()を省略できない
# buy_burger_1 {'drink' => true, 'potato' => false}, 'fish'
#  => syntax error, unexpected =>, expecting '}'

buy_burger_1({'drink' => true, 'potato' => false}, 'fish')
#  => {"drink"=>true, "potato"=>false}


def buy_burger_2(menu, options = {})
  p options
end

# ハッシュが第2引数以降であれば、()を省略できる
buy_burger_2 'fish', {'drink' => true, 'potato' => false}
#  => {"drink"=>true, "potato"=>false}
