# 発生した例外を補足しない場合

puts 'Start.'

module Greeter
  def hello
    'Hello.'
  end
end

# 例外発生
greeter = Greeter.new

# 以下、実行されない
puts 'End.'


# => Start.
#    undefined method `new' for Greeter:Module (NoMethodError)
