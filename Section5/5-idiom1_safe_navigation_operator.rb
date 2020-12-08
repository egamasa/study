### &. 演算子 ###

def find_currency(country)
  currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
  currencies[country]
end

def show_currency(country)
  # currency = find_currency(country)
  # if currency
  #   currency.upcase
  # end

  # 条件分岐内で直接変数に代入（分かりづらい）
  # if currency = find_currency(country)
  #   currency.upcase
  # end

  # &.演算子（Ruby 2.3以降）
  ## オブジェクトがnilでなければメソッドの結果、nilならnilを返す
  currency = find_currency(country)
  currency&.upcase
end

p show_currency(:japan)  #=> "YEN"
p show_currency(:brazil)  #=> nil
