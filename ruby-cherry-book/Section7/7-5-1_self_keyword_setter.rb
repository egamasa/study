### selfの付け忘れで不具合が発生するケース ###

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename_to_bob
    # selfなし
    ## → ローカル変数への代入とみなされ、インスタンス変数は変更できない
    name = 'Bob'
  end

  def rename_to_carol
    # self付き
    self.name = 'Carol'
  end

  def rename_to_dave
    # インスタンス変数を直接変更
    @name = 'Dave'
  end
end


user = User.new('Alice')

# 変更できない
user.rename_to_bob
p user.name
#  => "Alice"

user.rename_to_carol
p user.name
#  => "Carol"

user.rename_to_dave
p user.name
#  => "Dave"
