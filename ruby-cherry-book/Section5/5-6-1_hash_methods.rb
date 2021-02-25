currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }

# keys ハッシュのキーを配列として返す
p currencies.keys
#  => [:japan, :us, :india]

# values ハッシュの値を配列として返す
p currencies.values
#  => ["yen", "dollar", "rupee"]

# has_key? / key? / member?
# ハッシュ内に指定のキーが存在するか
p currencies.has_key?(:japan)  #=> true
p currencies.has_key?(:italy)  #=> false
