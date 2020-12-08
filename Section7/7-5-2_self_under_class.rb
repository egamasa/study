### クラスメソッドやクラス構文直下のself ###

class Foo
  puts "クラス構文直下のself: #{self}"

  def self.bar
    puts "クラスメソッド内のself: #{self}"
  end

  def baz
    puts "インスタンスメソッド内のself: #{self}"
  end
end
#=> クラス構文直下のself: Foo
# → Fooクラス自身

Foo.bar
#=> クラスメソッド内のself: Foo
# → Fooクラス自身

foo = Foo.new
foo.baz
#=> インスタンスメソッド内のself: #<Foo:0x00000000023f33b8>
# → Fooクラスのインスタンス
