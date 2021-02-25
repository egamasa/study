# 例外が二重に発生する場合

def some_method
  1 / 0
rescue => e
  # messageをtypoした
  puts "エラーが発生しました: #{e.mesage}"
  puts e.backtrace
end

some_method
# => undefined method `mesage' for ... (NoMethodError)
# typoによるエラーが出力され、本来補足したかったZeroDivisionErrorが捕捉できない


# Exception.#cause で元の例外オブジェクトを取得する
begin
  some_method
rescue => e
  puts "エラーが発生しました: #{e.class} #{e.message}#"
  puts e.backtrace

  # 元の例外を取得する（存在しなければnil）
  original = e.cause
  unless original.nil?
    puts "元の例外: #{original.class} #{original.message}"
    puts original.backtrace
  end
end
# => エラーが発生しました: NoMethodError undefined method `mesage' for #<ZeroDivisionError: divided by 0>
#    Did you mean?  message#
#    Section9/9-6-column2_duplicate_exception.rb:7:in `rescue in some_method'
#    Section9/9-6-column2_duplicate_exception.rb:3:in `some_method'
#    Section9/9-6-column2_duplicate_exception.rb:18:in `<main>'
#    元の例外: ZeroDivisionError divided by 0
#    Section9/9-6-column2_duplicate_exception.rb:4:in `/'
#    Section9/9-6-column2_duplicate_exception.rb:4:in `some_method'
#    Section9/9-6-column2_duplicate_exception.rb:18:in `<main>'
