# 3章 テストを自動化する

## テストコード
```ruby
require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_method
    assert_equal '期待値', '処理'
  end

  # example
  def test_sample
    assert_equal 'RUBY', 'ruby'.upcase
  end
end
```

- テストクラス名
  - キャメルケース
    - JapaneseCalenderTest
    - TestOrderItem

- テストファイル名
  - スネークケース
    - japanese_calender_test.rb
    - test_order_item.rb

- テストメソッド
  - `test_` で始まるメソッド名のメソッドが全て実行される


## Ministestのメソッド
- `assert_equal a, b`
  - b の結果が a ならパス
- `assert a`
  - a が true ならパス
- `refute a`
  - a が false ならパス


## 実行結果
- runs
  - 実行したテストメソッド件数
- assertions
  - 実行した検証メソッド件数
- failures
  - 検証に失敗したテストメソッド件数
- errors
  - エラーが発生したテストメソッド件数
- skips
  - スキップされたテストメソッド件数
