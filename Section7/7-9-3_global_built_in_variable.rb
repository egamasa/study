# グローバル変数と組み込み変数

# グローバル変数の宣言・代入
$program_name = 'Awesome program'

class Program
  def initialize(name)
    $program_name = name
  end

  def self.name
    $program_name
  end

  def name
    $program_name
  end
end


p Program.name  #=> "Awesome program"

program = Program.new('Super program')
p program.name  #=> "Super program"

# Program.newで $program_name = "Super program"
p Program.name  #=> "Super program"
p $program_name  #=> "Super program"
