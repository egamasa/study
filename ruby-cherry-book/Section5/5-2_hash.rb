### ハッシュ ###

{}.class  #=> Hash

{ 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

{
  'japan' => 'yen',
  'us' => 'dollar',
  'india' => 'rupee'
}

{
  'japan' => 'yen',
  'us' => 'dollar',
  'india' => 'rupee',
}

{ 'japan' => 'yen', 'japan' => '円' }
#=> warning: key "japan" is duplicated and overwritten on line 19


# ハッシュリテラルの {}
h = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
p h  #=> {"japan"=>"yen", "us"=>"dollar", "india"=>"rupee"}

# ブロックを生成する {}
[1, 2, 3].each { |n| puts n }
#=> 1
#   2
#   3
