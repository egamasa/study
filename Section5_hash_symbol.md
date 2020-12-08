# 5章 ハッシュ・シンボル

## 5.4 続・ハッシュについて

- シンボルはキー・値 双方に使用可能
  ```ruby
  currencies = { japan: :yen, us: :dollar, india: :rupee }
  ```

- キーワード引数
  ```ruby
  def buy_burger(menu, takeout:, drink: true, potato: true)
    # ...
  end

  # drink はデフォルト値, takeout は省略不可
  buy_burger('cheese', takeout: false, potato: false)
  # キーワード引数は順番が入れ替わってもOK
  buy_burger('fish', potato: false, takeout: true, drink: true)
  # ハッシュを引数として渡す
  params = {takeout: false, drink: true, potato: false}
  buy_burger('chicken', params)
  ```


## 5.6 ハッシュについてもっと詳しく

- ハッシュの展開（**）
  ```ruby
  h = { us: 'dollar', india: 'rupee' }
  { japan: 'yen', **h }
  # => {:japan=>"yen", :us=>"dollar", :india=>"rupee"}
  ```

- 擬似キーワード引数
  - ハッシュを受け取りキーワード引数のように扱う
  - キーワード引数との使い分け
    - どんなキーを渡してもエラーにならない
  ```ruby
  def buy_burger(menu, options = {})
    p menu
    p options
  end

  buy_burger('cheese', drink: true, potato: false)
  # => "cheese"  {:drink=>true, :potato=>false}
  ```

- 任意のキーワードを受け取る
  ```ruby
   def buy_burger(menu, drink: true, potato: true, **others)
    p menu
    p drink
    p potato
    p others
  end

  buy_burger('fish', drink: true, potato: false, salad: true, chicken: false)
  # => "fish"  true  false  {:salad=>true, :chicken=>false}
  ```

- キーと初期値を同時に設定
  ```ruby
  h = Hash.new { |hash, key| hash[key] = 'hello' }
  h  # => {}
  h[:foo]  # => "hello"
  h[:bar]  # => "hello"
  # キーと初期値が追加されている
  h  # => {:foo=>"hello", :bar=>"hello"}
  ```


## 5.7 シンボルについてもっと詳しく

- シンボルの配列を作成
  ```ruby
  %i(apple orange melon)
  # => [:apple, :orange, :melon]

  name = 'Alice'
  %i(hello\ngood-bye #{name.upcase})
  # => [:"hello\\ngood-bye", :"\#{name.upcase}"]

  # "%I" では改行文字や変数展開が有効
  %I(hello\ngood-bye #{name.upcase})
  # => [:"hello\ngood-bye", :ALICE]
  ```


