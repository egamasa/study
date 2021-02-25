# 例外処理の begin/end を省略できるケース
# → メソッドの処理全体が例外処理で囲まれている場合

def fizz_buzz(n)
  # begin
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
    puts "#{e.class} #{e.message}"
  # end
end

fizz_buzz(18)  # => Fizz
fizz_buzz(4)   # => 4
fizz_buzz(25)  # => Buzz
fizz_buzz(45)  # => Fizz Buzz
fizz_buzz(nil)
# => NoMethodError undefined method `%' for nil:NilClass
