### クラス未使用 ###
users = []
users << { first_name: 'Alice', last_name: 'Ruby', age: 20 }
users << { first_name: 'Bob', last_name: 'Python', age: 30 }

def full_name(user)
  "#{user[:first_name]} #{user[:last_name]}"
end

users.each do |user|
  # puts "氏名: #{user[:first_name]} #{user[:last_name]}、年齢: #{user[:age]}"
  puts "氏名: #{full_name(user)}、年齢: #{user[:age]}"
end
#=> 氏名: Alice Ruby、年齢: 20
#   氏名: Bob Python、年齢: 30

# typoした場合
p users[0][:first_name]  #=> "Alice"
p users[0][:first_mame]  #=> nil

# キーや値が容易に変更できてしまう
users[0][:country] = 'japan'
users[0][:first_name] = 'Carol'
p users[0]
#  => {:first_name=>"Carol", :last_name=>"Ruby", :age=>20, :country=>"japan"}


### クラス使用 ###
class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

class_users = []
class_users << User.new('Alice', 'Ruby', 20)
class_users << User.new('Bob', 'Python', 30)

class_users.each do |user|
  puts "氏名: #{user.full_name}、年齢: #{user.age}"
end
#=> 氏名: Alice Ruby、年齢: 20
#   氏名: Bob Python、年齢: 30

# typoした場合（ちゃんとエラーが出る）
p class_users[0].first_name  #=> "Alice"
p class_users[0].first_mame
#  => undefined method `first_mame' for #<User:0x000000000195a578> (NoMethodError)

# データの書き換えを防止できる
class_users[0].country = 'japan'
#  => undefined method `country=' for #<User:0x0000000001a746e8> (NoMethodError)
class_users[0].first_name = 'Carol'
#  => undefined method `first_name=' for #<User:0x000000000163a208> (NoMethodError)
