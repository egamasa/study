### 配列に初期値を設定する場合の注意 ###

# Array.new の第2引数で初期値を指定
a = Array.new(5, 'default')
p a
#  => ["default", "default", "default", "default", "default"]

## a の全要素が同じオブジェクトIDになる
p a.map(&:object_id)
#  => [60, 60, 60, 60, 60]

## a[0] を取得して変更
str = a[0]
p str  #=> "default"
str.upcase!
p str  #=> "DEFAULT"

## a のすべての要素が変更されてしまう
p a
#  => ["DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT"]



# ブロックで初期値を設定
a = Array.new(5) { 'default' }
p a
#  => ["default", "default", "default", "default", "default"]

## 各要素が異なるオブジェクトID
p a.map(&:object_id)
#  => [80, 100, 120, 140, 160]

## a[0] を取得して変更
str = a[0]
p str  #=> "default"
str.upcase!
p str  #=> "DEFAULT"

## a[0] のみ変更されている
p a
#  => ["DEFAULT", "default", "default", "default", "default"]
