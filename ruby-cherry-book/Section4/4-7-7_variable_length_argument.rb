### メソッドの可変長引数 ###

def greeting(*names)
  puts "#{names.join('と')}、こんにちは！"
end

greeting('田中さん')
greeting('田中さん', '鈴木さん')
greeting('田中さん', '鈴木さん', '佐藤さん')
#=> 田中さん、こんにちは！
#   田中さんと鈴木さん、こんにちは！
#   田中さんと鈴木さんと佐藤さん、こんにちは！