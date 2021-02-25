# 環境変数

p ENV['RUBY_VERSION']
# => "ruby-2.7.1"


# 起動時引数
# > ruby 12-5_env_argv.rb aaa bbb

p ARGV
# => ["aaa", "bbb"]

p ARGV[0]  # => "aaa"
p ARGV[1]  # => "bbb"


# 組み込み定数
## 再代入可能だが基本的にしない

p RUBY_VERSION
# => "2.7.1"


# ワンライナー
## → -e オプション

# $ ruby -e 'p [65,66,67].map(&:chr).join'
# => "ABC"
