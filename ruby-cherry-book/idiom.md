# イディオム

## &. 演算子
- safe navigation operator
  - nil かもしれないオブジェクトに対して安全にメソッドを呼び出す
  - オブジェクトが nil なら nil、そうでなければメソッド呼び出しの結果を返す
- Ruby 2.3以降
- lonely operator（ぼっち演算子）とも

```ruby
"apple".upcase  # => "APPLE"
nil.upcase  # NoMethodError (undefined method `upcase' for nil:NilClass)

"apple"&.upcase  # => "APPLE"
nil&.upcase  # => nil
```

## ||= （自己代入）
- 変数がfalse値（nil または false）であれば、代入する
- `number ||= value` は `number = number || value` と同じ

```ruby
number = nil

number ||= 10
number  # => 10

number ||= 20
number  # => 10
```

## !! （真偽値への型変換）
- true / false のどちらかを確実に返す

```ruby
!!true   # => true
!!0      # => true
!!1      # => true
!!""     # => true
!!"abc"  # => true
!!false  # => false
!!nil    # => false
```

