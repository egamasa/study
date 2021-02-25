# raise メソッド :意図的に例外を発生させる

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # [1] 意図的に例外(RuntimeError)を発生させる
    raise "無効な国名です: #{country}"

    # [2] エラークラスを指定して例外発生
    raise ArgumentError, "無効な国名です: #{country}"

    # [3] raiseメソッドに例外クラスのインスタンスを生成して渡す
    raise ArgumentError.new("無効な国名です: #{country}")

    # [x] メッセージの省略は可能だが避ける
    raise
  end
end

p currency_of(:japan)
# => "yen"

p currency_of(:italy)
# => `currency_of': 無効な国名です: italy (RuntimeError)

# 例外クラスをArgumentErrorに指定した場合
# => `currency_of': 無効な国名です: italy (ArgumentError)

# メッセージを省略した場合
# => `currency_of': unhandled exception
