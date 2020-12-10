# Singleton モジュールを使う

## クラスの new メソッドがprivateメソッドになり、外部から呼び出せなくなる
## クラスの特異メソッドとして instance メソッドが定義され、唯一のインスタンスを取得できる

require 'singleton'

class Configuration
  include Singleton

  attr_accessor :base_url, :debug_mode

  def initialize
    @base_url = ''
    @debug_mode = false
  end
end


# クラスだが、Singletonモジュールを使うとnewできなくなる
config = Configuration.new
#  => private method `new' called for Configuration:Class (NoMethodError)

# インスタンスを取得
config = Configuration.instance

# 設定値を保存
config.base_url = 'http://example.com'
config.debug_mode = true

# 設定値を取得
p config.base_url    #=> "http://example.com"
p config.debug_mode  #=> true

# 再度インスタンスを取得しても、同一の値が参照される
other = Configuration.instance
p other.base_url    #=> "http://example.com"
p other.debug_mode  #=> true

# instanceメソッドで取得したインスタンスは同一オブジェクトID
p config.object_id  #=> 60
p other.object_id   #=> 60
p config.equal?(other)  #=-> true
