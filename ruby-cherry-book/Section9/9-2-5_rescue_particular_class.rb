### 例外クラスを指定して例外処理 ###

begin
  1 / 0
rescue ZeroDivisionError
  puts "0で除算しました"
rescue NoMethodError
  puts "存在しないメソッドが呼び出されました"
end
# => 0で除算しました

begin
  'abc'.foo
rescue ZeroDivisionError
  puts "0で除算しました"
rescue NoMethodError
  puts "存在しないメソッドが呼び出されました"
end
# => 存在しないメソッドが呼び出されました


# 複数の例外クラスを指定＆例外オブジェクトを変数に格納
begin
  'abc'.foo
rescue ZeroDivisionError, NoMethodError => e
  puts "0で除算したか、存在しないメソッドが呼び出されました"
  puts "エラー: #{e.class} #{e.message}"
end
# => 0で除算したか、存在しないメソッドが呼び出されました
#    エラー: NoMethodError undefined method `foo' for "abc":String
