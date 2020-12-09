# ネストしたクラスの定義
## クラス内部に別のクラスを定義

class User
  class BloodType
    attr_reader :type

    def initialize(type)
      @type = type
    end
  end
end

# "::" で内部のクラスを参照する
blood_type = User::BloodType.new('B')
p blood_type.type  #=> "B"
