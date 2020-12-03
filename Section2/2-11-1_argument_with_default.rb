### デフォルト値付き引数 ###

def greeting(country = 'japan')
  if country == 'japan'
    puts 'こんにちは'
  else
    puts 'Hello'
  end
end

greeting  #=> こんにちは
greeting('us')  #=> Hello


def default_args(a, b, c = 0, d = 0)
  p "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end

default_args(1, 2)        #=> "a=1, b=2, c=0, d=0"
default_args(1, 2, 3)     #=> "a=1, b=2, c=3, d=0"
default_args(1, 2, 3, 4)  #=> "a=1, b=2, c=3, d=4"


# システム日時や他メソッドの返り値をデフォルト値に指定
def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'BAR'
end

foo  #=> time: 2020-12-03 15:02:49 +0900, message: BAR
