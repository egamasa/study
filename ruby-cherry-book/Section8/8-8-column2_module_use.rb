# モジュールの用途

# [1] 設定値の保持
module AwesomeApi1
  @base_url = ''
  @debug_mode = false

  class << self
    attr_accessor :base_url, :debug_mode
  end
end

# [2] 名前空間の作成
module AwesomeApi2
  class Engine
    # define class
  end
end
