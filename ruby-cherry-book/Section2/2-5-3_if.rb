# ==if文==

n = 11
if n > 10
  puts '10より大きい'
else
  puts '10以下'
end

country = 'italy'
if country == 'japan'
  puts 'こんにちは'
elsif country == 'us'
  puts 'Hello'
elsif country == 'italy'
  puts 'ciao'
else
  puts '???'
end

country = 'japan'
# 戻り値を代入
greeting =
  if country == 'japan'
    puts 'こんにちは'
  elsif country == 'us'
    puts 'Hello'
  elsif country == 'italy'
    puts 'ciao'
  else
    puts '???'
  end
puts greeting

# thenで1行で書く
country = 'us'
if country == 'japan' then puts 'こんにちは'
elsif country == 'us' then puts 'Hello'
elsif country == 'italy' then puts 'ciao'
else puts '???'
end

point = 7
day = 1
# if修飾子（後置if）
point *= 5 if day == 1
p point
