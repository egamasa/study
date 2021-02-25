# CSVクラス

require 'csv'

# CSVファイル出力
CSV.open('./sample.csv', 'w') do |csv|
  # ヘッダ行
  csv << ['Name', 'Email', 'Age']

  # データ行
  csv << ['Alice', 'alice@example.com', 20]
  csv << ['Bob', 'bob@example.com', 30]
end

# 1行ずつ出力
CSV.foreach('./sample.csv') do |row|
  puts "1: #{row[0]}, 2:#{row[1]}, 3:#{row[2]}"
end
# => 1: Name, 2:Email, 3:Age
#    1: Alice, 2:alice@example.com, 3:20
#    1: Bob, 2:bob@example.com, 3:30
