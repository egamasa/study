### unless文 ###

status = 'error'
if status != 'ok'
  puts 'Something wrong (if)'
end

unless status == 'ok'
  puts 'Something wrong (unless)'
end

status = 'ok'
unless status == 'ok'
  puts 'Something wrong (unless-else)'
else
  puts 'No problem (unless-else)'
end

status = 'error'
# 戻り値を代入
message =
  unless status == 'ok'
    'Something wrong (return)'
  else
    'No problem (return)'
  end
puts message

# unless修飾子（後置unless）
puts 'Something wrong (post-modification unless)' unless status == 'ok'

# thenで1行で書く
unless status == 'ok' then puts 'Something wrong (then)'
else puts 'No problem (then)'
end
