# 4章 配列・繰り返し処理

## 4.2 配列

- 多重代入
  ```ruby
  a, b = [1, 2]
  # a => 1, b => 2

  quotient, remainder = 14.divmod(3)
  # quotient => 4, remainder => 2
  ```


## 4.3 ブロック

- ブロック引数とブロック外の変数で同じ名前を使用した場合、ブロック引数が優先される
  - 基本的には異なる変数名を使う
  - 参考
    - Ruby: ブロック変数の「シャドウイング」はシャドウイングなのかが気になって調べた（社内勉強会） - TechRacho  
        https://techracho.bpsinc.jp/hachi8833/2018_11_02/63297

  ```ruby
  numbers = [1, 2, 3, 4]
  sum = 0
  sum_value = 100
  numbers.each do |sum_value|
    sum += sum_value
  end
  sum  # => 10
  ```

- `do ... end` or `{}`
  - 同じブロック
  - コードが読みやすいよう使い分けると良さそう
    - 複数行に跨る場合 `do ... end`
    - 1行で書く場合 `{}`


## 4.4 ブロックを使う配列のメソッド

- `(&:method)`
  - Procオブジェクト
  - 使える条件
    - ブロック引数が1個のみ
    - ブロック内メソッドの引数なし
    - ブロック内の処理は、メソッドを1回呼び出すのみ
  - 参考
    - &:って??? - Qiita  
      https://qiita.com/soma_sekimoto/items/a828b8f88b78aac2e7df

  ```ruby
  ['ruby', 'java', 'perl'].map { |s| s.upcase }
  # => ["RUBY", "JAVA", "PERL"]

  ['ruby', 'java', 'perl'].map(&:upcase)
  # => ["RUBY", "JAVA", "PERL"]
  ```


## 4.5 範囲（Range）

- 浮動小数点数（Float） の扱い
  - 参考
    - Rubyによる 小数 と Float と BigDecimalについて...(初心者向け) - Qiita  
      https://qiita.com/yusabana/items/fd4a0185c1f120403a74

  ```ruby
  range = 1...5

  range.include?(0)    # => false
  range.include?(1)    # => true
  range.include?(4.9)  # => true
  range.include?(5)    # => false

  # Floatクラスが保持できる有効数字の数
  require 'bigdecimal'
  BigDecimal::double_fig  # => 16

  # Floatクラスの有効桁数をオーバーすると丸め誤差が出て正しく判定できない
  range.include?(4.999999999999999)   # => true
  range.include?(4.9999999999999999)  # => 5.0 に丸められるので false

  # 丸め誤差が発生しない BigDecimal に変換して判定
  require 'bigdecimal/util'
  range.include?('4.9999999999999999'.to_d)  # => 0.49999999999999999e1 なので true
  ```

- n以上 m以下/m未満 の判定

  ```ruby
  def liquid?(temp)
    (0..100).include?(temp)
    # => 0以上 100以下
    (0...100).include?(temp)
    # => 0以上 100未満
  end

  liquid?(-1)   # => false
  liquid?(0)    # => true
  liquid?(99)   # => true
  liquid?(100)  # => false
  ```

- case文の `when` 節に条件として指定可能

  ```ruby
  case num
  when 0..5
    ...
  when 6..12
    ...
  ...
  ```

- 連続値の配列を作成

  ```ruby
  (1..5).to_a          # => [1, 2, 3, 4, 5]
  ('a'..'e').to_a      # => ["a", "b", "c", "d", "e"]
  ('bad'..'bag').to_a  # => ["bad", "bae", "baf", "bag"]
  ```

  - Splat展開
    - Splat演算子（`*`）で配列を展開
    ```ruby
    [*1..5]          # => [1, 2, 3, 4, 5]
    [*'a'..'e']      # => ["a", "b", "c", "d", "e"]
    [*'bad'..'bag']  # => ["bad", "bae", "baf", "bag"]
    ```


## 4.7 配列についてもっと詳しく

- Splat展開（`*`）
  - 1つの配列を複数の引数として展開する
    ```ruby
    a = [1, 2]
    b = [3, 4, 5]
    a.push(b)
    # => [1, 2, [3, 4, 5]]

    a = [1, 2]
    b = [3, 4, 5]
    a.push(*b)
    # => [1, 2, 3, 4, 5]
    ```

  - 配列同士を非破壊的に連結する
    ```ruby
    [1, a, 5]
    # => [1, [2, 3, 4], 5]

    [1, *a, 5]
    # => [1, 2, 3, 4, 5]
    ```

- 初期値の設定
  - `new` の第2引数で初期値を指定した場合、配列の全要素が同一オブジェクトを参照する
    - 破壊的メソッドを使用すると、全要素が変更される
  - ブロックでの初期値設定で回避可能

  ```ruby
  a = Array.new(5, "default")
  a  # => ["default", "default", "default", "default", "default"]
  a[1].upcase!
  a  # => ["DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT"]

  a = Array.new(5) {"default"}
  a  # => ["default", "default", "default", "default", "default"]
  a[1].upcase!
  a  # => ["default", "DEFAULT", "default", "default", "default"]
  ```


## 4.8 ブロックについてもっと詳しく

- 添字付き繰り返し処理
  ```ruby
  fruits = ['apple', 'orange', 'melon']

  fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}" }
  # => 0: apple  1: orange  2: melon
  fruits.map.with_index { |fruit, i| "#{i}: #{fruit}" }
  # => ["0: apple", "1: orange", "2: melon"]
  fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }
  # => ["apple", "melon"]
  ```

  - 添字を0以外の数値から開始
    ```ruby
    fruits = ['apple', 'orange', 'melon']

    # each_with_index(n) は不可
    fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}" }
    # => 1: apple  2: orange  3: melon
    fruits.map.with_index(10) { |fruit, i| "#{i}: #{fruit}" }
    # => ["10: apple", "11: orange", "12: melon"]
    ```

- ブロック引数で配列を受け取る
  ```ruby
  dimensions = [[10, 20], [30, 40], [50, 60]]
  areas = []

  dimensions.each do |length, width|
    areas << length * width
  end
  areas  # => [200, 1200, 3000]
  ```

  - ブロック引数の方が多い場合はnilで埋められる
    ```ruby
    dimensions = [[10, 20], [30, 40], [50, 60]]

    dimensions.each do |length, width, foo, bar|
      p [length, width, foo, bar]
    end
    # => [10, 20, nil, nil]  [30, 40, nil, nil] ...
    ```

  - 配列の要素数の方が多い場合は切り捨てられる
    ```ruby
    dimensions = [[10, 20, 100], [30, 40, 200], [50, 60, 300]]

    dimensions.each do |length, width|
      p [length, width]
    end
    # => [10, 20]  [30, 40] ...
    ```

  - 添字も受け取る
    ```ruby
    dimensions = [[10, 20], [30, 40], [50, 60]]

    # 配列の要素を()で括る
    dimensions.each_with_index do |(length, width), i|
      p [i, length, width]
    end
    # => [0, 10, 20]  [1, 30, 40] ...

    dimensions.each.with_index(11) do |(length, width), i|
      p [i, length, width]
    end
    # => [11, 10, 20]  [12, 30, 40] ...
    ```

- ブロックローカル変数
  - ブロック内のみで有効なローカル変数を宣言
  - ブロック外で宣言されている変数と同じ変数名も可能
  - あまり使わなさそう…

- ブロックでのファイルクローズ処理
  - 明示的にクローズしなくてよい
  ```ruby
    File.open("./sample.txt", "w") do |file|
      file.puts("書き込む文字列")
    end
  ```

- do ... end / { } の結合度
  - 結合度 do ... end < { }

  ```ruby
  a = [1, 2, 3]

  # 「100 {'NG'}」 と解釈されエラー
  a.delete 100 { 'NG' }
  # => SyntaxError: (irb):2: syntax error, unexpected '{', expecting end-of-input

  # 引数付きメソッド呼び出しで{}をブロックとして使う場合は、メソッド引数の()を省略できない
  a.delete(100) { 'NG' }
  # => "NG"
  ```


## 4.9 さまざまな繰り返し処理

- times
- upto / downto
- step
  - `開始値.step(上限値, 1回あたりの増減値)`
    ```ruby
    a = []
    1.step(10, 2) { |n| a << n }
    a  # => [1, 3, 5, 7, 9]
    ```
- while / until
  - until：偽であれば実行
  - 1行で書く
    ```ruby
    a = []
    a << 1 while a.size < 5
    a  # => [1, 1, 1, 1, 1]
    ```
  - 必ず1回は実行する
    - `begin ... end` で囲む
    ```ruby
    a = []
    begin
      a << 1
    end while false
    a  # => [1]
    ```
- for
  - each, map を使い場合が多い
  - 配列を受け取る変数やfor内のローカル変数がfor文の外でも使える
- while true ... end / loop do ... end
  - 無限ループ
  - `break` で脱出


## 4.10 繰り返し処理用の制御構造

- break
  - 繰り返しから脱出
- return
  - メソッドから脱出（繰り返し<メソッド）
- throw - catch
  - 例外処理ではなく、大域脱出
  - 例外処理は raise - rescue
- next
- redo
