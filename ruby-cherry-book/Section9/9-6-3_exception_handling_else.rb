# 例外処理のelse

## elseあり
begin
  puts 'Hello.'
rescue
  puts '例外が発生しました'
else
  # else内のコードでエラーが起きてもrescueでは補足されない
  puts '例外は発生しませんでした'
end
# => Hello.
#    例外は発生しませんでした

## elseなし
begin
  puts 'Hello.'
  puts '例外は発生しませんでした'
rescue
  puts '例外が発生しました'
end
# => Hello.
#    例外は発生しませんでした
