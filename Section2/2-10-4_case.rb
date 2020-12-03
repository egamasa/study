### case文 ###

country = 'italy'

# if
if country == 'japan'
  puts 'こんにちは'
elsif country == 'us'
  puts 'Hello'
elsif country == 'italy'
  puts 'ciao'
else
  puts '???'
end

# case
case country
when 'japan'
  puts 'こんにちは'
when 'us'
  puts 'Hello'
when 'italy'
  puts 'ciao'
else
  puts '???'
end

# when節複数指定
country = 'アメリカ'
case country
when 'japan', '日本'
  puts 'こんにちは'
when 'us', 'アメリカ'
  puts 'Hello'
when 'italy', 'イタリア'
  puts 'ciao'
else
  puts '???'
end

# 戻り値を代入
country = 'japan'
message =
  case country
  when 'japan'
    'こんにちは'
  when 'us'
    'Hello'
  when 'italy'
    'ciao'
  else
    '???'
  end
puts message

# thenで1行で書く
country = 'italy'
case country
when 'japan' then puts 'こんにちは'
when 'us' then puts 'Hello'
when 'italy' then puts 'ciao'
else '???'
end
