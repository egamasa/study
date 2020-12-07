# 繰り返し処理以外で使用されるブロック

# File.open + do...end
# オープンしたファイルを自動的にクローズ

File.open("./sample.txt", "w") do |file|
  file.puts("1行目のテキストです。")
  file.puts("2行目のテキストです。")
  file.puts("3行目のテキストです。")
end
