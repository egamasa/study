### シンボルの作成 ###

# 有効
p :apple
p :apple
p :ruby_is_fun
p :okay?
p :welcome!
p :_secret
p :$dollar  #グローバル変数
p :@at_mark  #インスタンス変数

# 無効
# :12345
# :ruby-is-fun
# :ruby is fun
# :()

# 有効（シングルクォートで囲む）
p :'12345'
p :'ruby-is-fun'
p :'ruby is fun'
p :'()'


# 式展開
name = 'Alice'
p :"#{name.upcase}"  #=> :ALICE

# ハッシュのキーで "文字列: 値" は ":文字列" のシンボルになる
hash = { 'abc': 123 }
p hash  #=> {:abc=>123}
