# ensure :例外の発生有無に関わらず必ず実行する処理

file = File.open('some.txt', 'w')

begin
  file << 'Hello'
rescue
  puts "Error"
ensure
  # 例外の有無に関係なくファイルはクローズする
  file.close
end

# ただし、ファイルのクローズ処理の場合はブロックで代用可能
