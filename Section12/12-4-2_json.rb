# JSONモジュール

require 'json'

user = { name: 'Alice', email: 'alice@example.com', age: 20 }

# Hash → JSON
user_json = user.to_json
puts user_json
# => {"name":"Alice","email":"alice@example.com","age":20}

# JSON → Hash（キーは文字列になる）
p JSON.parse(user_json)
# => {"name"=>"Alice", "email"=>"alice@example.com", "age"=>20}
