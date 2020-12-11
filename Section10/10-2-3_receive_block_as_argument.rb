# ブロックを引数として明示的に受け取る
# → 引数の前に "&" を付加、callメソッドでブロック処理実行

def greeting(&block)
  puts 'おはよう'

  # ブロックの有無を確認
  unless block.nil?
    # callメソッドでブロック処理を実行
    text = block.call('こんにちは')
    puts text
  end

  ## block_given? / yield でも可
  # if block_given?
  #   text = yield 'こんにちは'
  #   puts text
  # end

  puts 'こんばんは'
end


# ブロック無しで呼び出し
greeting
# => おはよう
#    こんばんは

# ブロック付きで呼び出し
greeting do |text|
  text * 2
end
# => おはよう
#    こんにちはこんにちは
#    こんばんは



# ブロック引数のメリット
# → [1] ブロックを他のメソッドに引き渡せる

def greeting_ja(&block)
  texts = ['おはよう', 'こんにちは', 'こんばんは']
  greeting_common(texts, &block)
end

def greeting_en(&block)
  texts = ['good morning', 'hello', 'good evening']
  greeting_common(texts, &block)
end

# 共通の出力処理
def greeting_common(texts, &block)
  puts texts[0]
  puts block.call(texts[1])  # ブロック実行
  puts texts[2]
end

greeting_ja do |text|
  text * 2
end
# => おはよう
#    こんにちはこんにちは
#    こんばんは

greeting_en do |text|
  text.upcase
end
# => good morning
#    HELLO
#    good evening


# → [2] ブロックに対してメソッドを呼び出し、情報の取得やブロックに対する操作が可能

def greeting(&block)
  puts 'おはよう'
  text =
    # ブロック引数の個数を取得
    if block.arity == 1
      yield 'こんにちは'
    elsif block.arity == 2
      yield 'こんに', 'ちは'
    end
  puts text
  puts 'こんばんは'
end

# 1個のブロック引数でメソッドを呼び出す
greeting do |text|
  text * 2
end
# => おはよう
#    こんにちはこんにちは
#    こんばんは

# 2個のブロック引数でメソッドを呼び出す
greeting do |text_1, text_2|
  text_1 * 2 + text_2 * 2
end
# => おはよう
#    こんにこんにちはちは
#    こんばんは
