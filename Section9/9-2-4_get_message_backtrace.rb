# 例外オブジェクトから情報を取得
# class, message, backtrace メソッド

begin
  1 / 0
rescue => e  # 例外オブジェクトを格納する変数(e, ex, exception 等)
  puts "エラークラス: #{e.class}"
  puts "エラーメッセージ: #{e.message}"
  puts "バックトレース -----"
  puts e.backtrace
  puts "-----"
end

# => エラークラス: ZeroDivisionError
#    エラーメッセージ: divided by 0
#    バックトレース -----
#    Section9/9-2-4_get_message_backtrace.rb:4:in `/'
#    Section9/9-2-4_get_message_backtrace.rb:4:in `<main>'
#    -----
