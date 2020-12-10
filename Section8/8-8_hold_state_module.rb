# 状態を保持するモジュールの作成
## → アプリケーションのconfig等に使う

module AwesomeApi
  @base_url = ''
  @debug_mode = false

  class << self
    def base_url=(value)
      @base_url = value
    end

    def base_url
      @base_url
    end

    def debug_mode=(value)
      @debug_mode = value
    end

    def debug_mode
      @debug_mode
    end
  end

  # 実際は1行でOK
  attr_accessor :base_url, :debug_mode
end


# 設定値を保存する
AwesomeApi.base_url = 'http://example.com'
AwesomeApi.debug_mode = true

# 設定値を参照する
p AwesomeApi.base_url    #=> "http://example.com"
p AwesomeApi.debug_mode  #=> true
