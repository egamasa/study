# モジュールとインスタンス変数
## モジュール内のメソッドでインスタンス変数を読み書き
## → include先クラスのインスタンス変数を読み書き

module NameChangerInstance
  def change_name
    @name = 'ありす'
  end
end

class UserInstance
  include NameChangerInstance

  attr_reader :name

  def initialize(name)
    @name = name
  end
end

user1 = UserInstance.new('alice')
p user1.name  #=> "alice"

# モジュールのメソッドでクラスのインスタンス変数を変更
user1.change_name
p user1.name  #=> "ありす"

#================================================

# セッターメソッド経由でデータを変更する
module NameChangerSetter
  def change_name
    self.name = 'ありす'
  end
end

class UserSetter
  include NameChangerSetter

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user2 = UserSetter.new('alice')
p user2.name  #=> "alice"

user2.change_name
p user2.name  #=> "ありす"
