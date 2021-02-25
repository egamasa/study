# 9章 例外処理

```ruby
begin
  # 例外が起こり得る処理
rescue
  # 例外発生時の処理
else
  # 例外が発生しなかった場合の処理
ensure
  # 例外の有無に関わらず実行する処理
end
```

- 返り値
  - 正常終了：begin節の最後の式
  - 例外発生：rescue節の最後の式
  - ensure節ではreturnを使わない\
- メソッドの処理全体を例外処理の対象とする場合、begin/end を省略可能\
- 独自の例外クラスの定義（メソッドや属性の追加）も可能
- typoやバグにより例外を二重に発生させないようにする


## 例外オブジェクトから情報取得

- 組み込み変数からも取得可能
  - $! :例外オブジェクト
  - $@ :バックトレース

```ruby
rescue => e
  # エラークラス
  puts e.class
  puts $!.class
  # エラーメッセージ
  puts e.message
  $!.message
  # バックトレース
  puts e.backtrace
  puts $@
```


## 例外クラスを指定して例外処理

- 例外クラスにも継承関係がある
  - サブクラスをスーパークラスより先に記述する

```ruby
begin
  # 例外が起こり得る処理
rescue ZeroDivisionError
  # ZeroDivisionErrorの例外処理
rescue NoMethodError, NameError => e
  # NoMethodErrorとNameErrorの例外処理
  # 例外情報の取得
  puts "#{e.class} #{e.message}"
rescue 
  # StandardErrorの例外処理
end
```


## 例外発生時にリトライ

- `retry` メソッド
  - begin節の最初から処理をやり直す
- 無限ループを防止する
  - リトライ上限回数の制御等を入れる


## 意図的に例外を発生させる

- `raise` メソッド
  - メッセージ無し（引数無し）での例外発生は避ける

```ruby
rescue => e
  # [1] 意図的に例外(RuntimeError)を発生させる
  raise "エラー: #{e.class} #{e.message}"

  # [2] エラークラスを指定して例外発生
  raise ArgumentError, "無効な引数です: #{e.message}"

  # [3] 例外クラスのインスタンスを生成
  raise ArgumentError.new("無効な引数です: #{e.message}")
```


## rescue修飾子

- 例外発生時は rescue の値を返す

```ruby
def to_date(string)
  Date.parse(string) rescue nil
end
```

## rescueした例外を再度発生させる

- 例外発生時、rescue節でまずはログ出力等の処理
- 続いて、`raise` メソッドで再度例外を発生させ、プログラムを異常終了させる


## ベストプラクティス

- 安易にrescueを使わない
  - プログラムを見直す
  - フレームワークの活用
- rescueしたら情報を残す
  - ログへの出力
    - 例外クラス名
    - エラーメッセージ
    - バックトレース
- アンチパターン
  - 正常終了と異常終了の返り値の型が違う
  - n分岐の最後の処理がelse
- 例外処理の対象範囲・クラスは最小限に絞り込む
- 条件分岐で十分な場合もある


