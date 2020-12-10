# prependでモジュールをmix-inする
## （Ruby 2.0以降）同名のメソッドがある場合、クラスよりモジュールから先にメソッドを呼び出す

module A
  def to_s
    "<A> #{super}"
  end
end

module B
  def to_s
    "<B> #{super}"
  end
end

class User
  def to_s
    "<User> #{super}"
  end
end

class StudentInclude < User
  include A
  include B

  def to_s
    "<Student> #{super}"
  end
end

class StudentPrepend < User
  # includeの代わりにprepend
  prepend A
  prepend B

  def to_s
    "<Student> #{super}"
  end
end


# include の場合
product_include = StudentInclude.new
p product_include.to_s
#  => "<Student> <B> <A> <User> #<StudentInclude:0x0000000001d56488>"
p StudentInclude.ancestors
#  => [StudentInclude, B, A, User, Object, Kernel, BasicObject]

# prepend の場合
## → クラスよりモジュールのメソッドが先に呼び出される
product_prepend = StudentPrepend.new
p product_prepend.to_s
#  => "<B> <A> <Student> <User> #<StudentPrepend:0x0000000001d55ad8>"
p StudentPrepend.ancestors
#  => [B, A, StudentPrepend, User, Object, Kernel, BasicObject]
