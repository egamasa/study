# 継承関係とrescue節の順序

p NoMethodError.ancestors
# => [NoMethodError, DidYouMean::Correctable, NameError, StandardError, Exception, Object, Kernel, BasicObject]


#--- NG ---#
begin
  'abc'.foo  # NoMethodError
rescue NameError
  # NoMethodErrorのスーパークラスのNameErrorで補足される
  puts 'NameErrorです'
rescue NoMethodError
  # ここは実行されない
  puts 'NoMethodErrorです'
end
# => NameErrorです


#--- OK ---#
# サブクラスをスーパークラスより先に記述すること
begin
  'abc'.foo  # NoMethodError
rescue NoMethodError
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
end
# => NoMethodErrorです


# StandardError は省略可能
begin
  1 / 0  # ZeroDivisionError
rescue NoMethodError
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
rescue  # StandardError として処理される
  puts 'その他エラーです'
end
# => その他エラーです
