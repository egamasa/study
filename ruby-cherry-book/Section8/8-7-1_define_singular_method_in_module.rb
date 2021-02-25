# モジュールに特異メソッドを定義する

module Loggable
  # def self.log(text)
  #   puts "[LOG] #{text}"
  # end

  # "self." を省略する書き方
  ## → .newしないで使うライブラリの作成に向く
  class << self
    def log(text)
      puts "[LOG] #{text}"
    end

    # def hoge
    # end

    # def fuga
    # end

    # ...
  end
end

Loggable.log('Hello.')  #=> [LOG] Hello.
