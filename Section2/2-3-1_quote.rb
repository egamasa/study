# ==シングルクォートとダブルクォート==

"ダブルクォートの文字列"
'シングルクォートの文字列'

# 改行記号
puts "こんにちは\nさようなら"
puts 'こんにちは\nさようなら'
# => こんにちは
#    さようなら
# => こんにちは\nさようなら

# 式展開
name = 'Alice'
puts "Hello, #{name}!"
puts 'Hello, #{name}!'
# => Hello, Alice!
# => Hello, #{name}!

# 文字列の連結
puts 'Hello, ' + name + '!'
# => Hello, Alice!


# エスケープ
puts "こんにちは\\nさようなら"
# => こんにちは\nさようなら

puts "Hello, \#{name}!"
# => Hello, #{name}!

puts "He said, \"Don't speak.\""
puts 'He said, "Don\'t speak."'
# => He said, "Don't speak."
# => He said, "Don't speak."
