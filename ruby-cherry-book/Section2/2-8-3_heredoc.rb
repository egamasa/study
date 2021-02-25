### ヒアドキュメント ###

# 文字列 途中で改行できる
puts "Line 1,
Line 2"

puts 'Line 1,
Line 2'

# ヒアドキュメント（<<）
a = <<TEXT
これはヒアドキュメントです。
複数行に渡る長い文字列を作成するのに便利です。
TEXT
puts a

puts <<HTML
<div>
  <img src="sample.jpg">
</div>
HTML

# <<- :最後の識別子をインデントさせる
def some_method1
  <<-TEXT
これはヒアドキュメントです。
"<<-" を使うと最後の識別子をインデントさせることができます。
  TEXT
end
puts some_method1

# <<~ :内部文字列のインデントを無視
def some_method2
  <<~TEXT
    これはヒアドキュメントです。
    "<<~" を使うと内部文字列のインデント部分が無視されます。
  TEXT
  <<-TEXT
    "<<~" を使わずに
    インデントした場合
  TEXT
end
puts some_method2

# ヒアドキュメント内は式展開有効
name = 'Alice'
# a = <<"TEXT"  も同様
a = <<TEXT
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT
puts a
# => ようこそ、Aliceさん！
#    以下のメッセージをご覧ください。

# 式展開無効化（シングルクォート同様）
name = 'Alice'
a = <<'TEXT'
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT
puts a
# => ようこそ、#{name}さん！
#    以下のメッセージをご覧ください。

# ヒアドキュメントを引数として渡す
a = 'Ruby'
a.prepend(<<TEXT)
Java
PHP
TEXT
puts a
# => Java
#    PHP
#    Ruby

# ヒアドキュメントに対して直接メソッド呼び出し
b = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts b
# => HELLO,
#    GOOD-BYE.
