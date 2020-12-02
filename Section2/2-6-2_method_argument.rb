# ==メソッド定義における引数の()==

# 引数が無い場合は()をつけない（つけても動く）
def greeting
# def greeting()
  'こんにちは'
end

# 引数がある場合は()をつける（つけなくても動く）
def greeting_country(country)
# def greeting_country country
  if country == 'japan'
    'こんにちは'
  else
    'Hello'
  end
end
