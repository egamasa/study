### & と to_proc メソッド ###

# to_proc :シンボルをProcオブジェクトに変換
split_proc = :split.to_proc
p split_proc  # => #<Proc:0x0000000000cd3890(&:split)>

## 第1引数がレシーバ、第2引数以降は元のメソッドの引数になる
# 'a-b-c-d e'.split  と同義
p split_proc.call('a-b-c-d e')  # => ["a-b-c-d", "e"]
# 'a-b-c-d e'.split('-')  と同義
p split_proc.call('a-b-c-d e', '-')  # => ["a", "b", "c", "d e"]
# 'a-b-c-d e'.split('-', 3)  と同義
p split_proc.call('a-b-c-d e', '-', 3)  # => ["a", "b", "c-d e"]


# & の挙動
# → 右辺のオブジェクトに対しto_procメソッドを呼び出し、戻り値のProcオブジェクトをブロックとしてメソッドに渡す

p ['ruby', 'java', 'perl'].map { |s| s.upcase }
# => ["RUBY", "JAVA", "PERL"]

p ['ruby', 'java', 'perl'].map(&:upcase)
# ↓内部処理はこう
p ['ruby', 'java', 'perl'].map { |s| (:upcase.to_proc).call(s) }
# => ["RUBY", "JAVA", "PERL"]
