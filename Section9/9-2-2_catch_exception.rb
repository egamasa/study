# 例外を補足して処理を続行する場合

puts 'Start.'

module Greeter
  def hello
    'Hello.'
  end
end

# 例外処理
begin
  greeter = Greeter.new
rescue => exception
  puts '例外が発生したが、処理を続行'
end

puts 'End.'


# => Start.
#    例外が発生したが、処理を続行
#    End.
