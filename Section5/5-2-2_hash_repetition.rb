### ハッシュでの繰り返し処理 ###

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# キーと値をそれぞれ取得
currencies.each do |key, value|
  puts "#{key} : #{value}"
end
#=> japan : yen
#   us : dollar
#   india : rupee

# 要素ごと取得
currencies.each do |key_value|
  p key_value
end
#=> ["japan", "yen"]
#   ["us", "dollar"]
#   ["india", "rupee"]
