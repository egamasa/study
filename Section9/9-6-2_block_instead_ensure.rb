# ensure の代わりにブロックを使う

# ブロック付きでファイルをオープンすると、メソッド実行後自動的にクローズされる
File.open('some.txt', 'w') do |file|
  file << 'Hello'
end

# 例外発生時も自動的にファイルがクローズされる
File.open('some.txt', 'w') do |file|
  file << 'Hello'

  1 / 0  #例外発生
end
# => `/': divided by 0 (ZeroDivisionError)
