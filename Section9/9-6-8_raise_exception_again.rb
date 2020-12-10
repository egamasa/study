# rescueした例外を再度発生させる
# → rescue節の中でraiseメソッドを使う

def fizz_buzz(n)
  if n % 15 == 0
    puts 'Fizz Buzz'
  elsif n % 3 == 0
    puts 'Fizz'
  elsif n % 5 == 0
    puts 'Buzz'
  else
    puts n.to_s
  end
rescue => e
  # ログ出力、メール送信等の処理（これだけでは処理続行）
  puts "[LOG] エラーが発生しました: #{e.class} #{e.message}"

  # 再度例外を発生させ、プログラムを異常終了させる
  raise
end

fizz_buzz(nil)
# => [LOG] エラーが発生しました: NoMethodError undefined method `%' for nil:NilClass

# => `fizz_buzz': undefined method `%' for nil:NilClass (NoMethodError)
