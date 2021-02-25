# メソッド定義の削除

class User
end

class Student < User
  undef to_s
end

user = User.new
p user.to_s
#=> "#<User:0x0000000000a9bcd0>"

student = Student.new
p student.to_s
#=> undefined method `to_s' for #<Student:0x0000000000a9bb40> (NoMethodError)
