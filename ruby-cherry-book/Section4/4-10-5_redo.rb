### redo（繰り返し処理のやり直し） ###

foods = ['ピーマン', 'トマト', 'セロリ']
foods.each do |food|
  print "#{food}は好きですか？ => "
  answer = ['はい', 'いいえ'].sample
  puts answer

  redo unless answer == 'はい'
end
#=> ピーマンは好きですか？ => いいえ
#   ピーマンは好きですか？ => はい
#   トマトは好きですか？ => いいえ
#   トマトは好きですか？ => いいえ
#   トマトは好きですか？ => はい
#   セロリは好きですか？ => はい


# やり直す回数を制限
foods = ['ピーマン', 'トマト', 'セロリ']
count = 0
foods.each do |food|
  print "#{food}は好きですか？ => "
  answer = 'いいえ'
  puts answer

  ## 2回まで
  count += 1
  redo if answer != 'はい' && count < 2

  count = 0
end
#=> ピーマンは好きですか？ => いいえ
#   ピーマンは好きですか？ => いいえ
#   トマトは好きですか？ => いいえ
#   トマトは好きですか？ => いいえ
#   セロリは好きですか？ => いいえ
#   セロリは好きですか？ => いいえ
