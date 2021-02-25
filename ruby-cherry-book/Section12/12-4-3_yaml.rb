# YAMLモジュール

require 'yaml'

yaml = <<TEXT
alice:
  name: 'Alice'
  email: 'alice@example.com'
  age: 20
TEXT

# YAML → Hash
users = YAML.load(yaml)
p users
# => {"alice"=>{"name"=>"Alice", "email"=>"alice@example.com", "age"=>20}}

users['alice']['gender'] = :female

# Hash → YAML
puts YAML.dump(users)
# => ---
#    alice:
#      name: Alice
#      email: alice@example.com
#      age: 20
#      gender: :female
