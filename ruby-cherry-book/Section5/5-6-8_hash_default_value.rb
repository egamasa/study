### ハッシュの初期値 ###

h = {}
p h[:foo]  #=> nil

h = Hash.new('hello')
p h[:foo]  #=> "hello"


# Hash.new の引数で初期値を設定
h = Hash.new('hello')
p a = h[:foo]  #=> "hello"
p b = h[:bar]  #=> "hello"

## a と b は同一オブジェクトID
p a.equal?(b)  #=> true
p a.object_id  #=> 60
p b.object_id  #=> 60

## a に破壊的変更を加えると、b も変更される
a.upcase!
p a  #=> "HELLO"
p b  #=> "HELLO"

## ハッシュは空のまま
p h  #=> {}

## 他のキーの初期値も変更されている
p h[:baz]  #=> "HELLO"


# ブロックで初期値を設定
h = Hash.new { 'hello' }
p a = h[:foo]  #=> "hello"
p b = h[:bar]  #=> "hello"

## a と b は異なるオブジェクトID
p a.equal?(b)  #=> false
p a.object_id  #=> 80
p b.object_id  #=> 100

## a に破壊的変更を加えても、b には影響しない
a.upcase!
p a  #=> "HELLO"
p b  #=> "hello"

## ハッシュは空のまま
p h  #=> {}

## 他のキーの初期値も変更されていない
p h[:baz]  #=> "hello"


# 未知のキーの指定と同時に初期値を設定
h = Hash.new { |hash, key| hash[key] = 'hello' }
p h  #=> {}

## 未知のキーを呼び出す→初期値が返る
p h[:foo]  #=> "hello"
p h[:bar]  #=> "hello"

## 要素（キーと初期値）が追加されている
p h  #=> {:foo=>"hello", :bar=>"hello"}
