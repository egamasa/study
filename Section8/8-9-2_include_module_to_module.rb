# モジュールにほかのモジュールをincludeする

module Greeting
  def hello
    puts 'Hello.'
  end
end

module Aisatsu
  # 別のモジュールをinclude
  include Greeting

  def konnichiwa
    puts 'こんにちは。'
  end
end

class User
  # Aisatsuモジュールのみをinclude
  include Aisatsu
end


user = User.new

# Aisatsuモジュールのメソッド
user.konnichiwa  #=> こんにちは。

# AisatsuモジュールにincludeしたGreetingモジュールのメソッド
user.hello  #=> Hello.

# Greetingモジュールも探索対象
p User.ancestors
#  => [User, Aisatsu, Greeting, Object, Kernel, BasicObject]
