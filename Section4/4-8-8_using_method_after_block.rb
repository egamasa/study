# ブロックの後にメソッドを続けて書く

names = ['田中', '鈴木', '佐藤']

san_names = names.map { |name| "#{name}さん" }
p san_names.join('と')
#=> "田中さんと鈴木さんと佐藤さん"

p names.map { |name| "#{name}さん" }.join('と')
#=> "田中さんと鈴木さんと佐藤さん"

san_names = names.map do |name|
  "#{name}さん"
end.join('と')
p san_names
#=> "田中さんと鈴木さんと佐藤さん"
