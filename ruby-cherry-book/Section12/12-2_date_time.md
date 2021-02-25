## 日付・時刻

- タイムゾーンに注意する

### 標準ライブラリ

- Time
  - 日付と時刻
  - 組み込みクラス（require不要）
  - サマータイム対応
  - うるう秒対応
- DateTime
  - 日付と時刻
  - `require 'date'`
- Date
  - 日付
  - `require 'date'`


```ruby
time = Time.new(2017, 1, 31, 23, 30, 59)
# => 2017-01-31 23:30:59 +0900

require 'date'

date = Date.new(2017, 1, 31)
# => #<Date: 2017-01-31 ((2457785j,0s,0n),+0s,2299161j)>

date_time = DateTime.new(2017, 1, 31, 23, 30, 59)
# => #<DateTime: 2017-01-31T23:30:59+00:00 ((2457785j,84659s,0n),+0s,2299161j)>
```
