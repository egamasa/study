### 添字付きの繰り返し処理 (with_index) ###

# mapメソッドと組み合わせる（繰り返し処理で添字も同時に取得）
fruits = ['apple', 'orange', 'melon']
p fruits.map.with_index { |fruit, i| "#{i}: #{fruit}" }
#  => ["0: apple", "1: orange", "2: melon"]

# map以外のメソッドと組み合わせる
fruits = ['apple', 'orange', 'melon']
p fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }
#  => ["apple", "melon"]


fruits = ['apple', 'orange', 'melon']

# ブロック無し呼び出しでEnumeratorオブジェクトを返すメソッド
p fruits.each
p fruits.map
p fruits.delete_if
#=> #<Enumerator: ["apple", "orange", "melon"]:each>
#   #<Enumerator: ["apple", "orange", "melon"]:map>
#   #<Enumerator: ["apple", "orange", "melon"]:delete_if>
