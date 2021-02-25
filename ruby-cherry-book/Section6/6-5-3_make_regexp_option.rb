### 正規表現オブジェクト作成時のオプション ###

# i :大文字・小文字を区別しない
p 'HeLlO' =~ /hello/i  #=> 0
p 'hElLo' =~ %r{hello}i  #=> 0

regexp = Regexp.new('hello', Regexp::IGNORECASE)
p 'HeLlO' =~ regexp  #=> 0


# m :"."（任意の文字）を改行文字にもマッチさせる
p "Hello\nBye" =~ /Hello.Bye/  #=> nil
p "Hello\nBye" =~ /Hello.Bye/m  #=> 0

regexp = Regexp.new('Hello.Bye', Regexp::MULTILINE)
p "Hello\nBye" =~ regexp  #=> 0


# x :正規表現内の空白文字（スペース、改行）を無視
regexp = /
  \d{3}
  -
  \d{4}
/x
p '123-4567' =~ regexp  #=> 0

pattern = <<'TEXT'
  \d{3}
  -
  \d{4}
TEXT
regexp = Regexp.new(pattern, Regexp::EXTENDED)
p '123-4567' =~ regexp  #=> 0

## 空白文字にマッチさせたい場合はエスケープが必要
regexp_with_space = /
  \d{3}
  \ 
  \d{4}
/x
p '123 4567' =~ regexp_with_space  #=> 0


# 各オプションは併用可能
p "HELLO\nBYE" =~ /Hello.Bye/im  #=> 0

regexp = Regexp.new('Hello.Bye', Regexp::IGNORECASE | Regexp::MULTILINE)
p "hElLo\nbYe" =~ regexp  #=> 0
