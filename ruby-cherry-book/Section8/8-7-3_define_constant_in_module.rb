# モジュールに定数を定義する

module Loggable
  PREFIX = '[LOG]'.freeze

  module_function

  def log(text)
    puts "#{PREFIX} #{text}"
  end
end

# 定数を参照
p Loggable::PREFIX  #=> "[LOG]"

Loggable.log('Hello.')  #=> [LOG] Hello.
