### %記法 ###
# 文字列中のシングルクォート、ダブルクォートのエスケープ不要

# %q!...! = シングルクォーテーション
puts %q!He said, "Don't speak."!

# %Q!...! = ダブルクォーテーション
something = "Hello."
puts %Q!He said, #{something}"!

# %!...! = ダブルクォーテーション
something = "Bye."
puts %!He said, #{something}"!

# 区切り文字を ? にする
puts %q?He said, "Don't speak!"?

# 区切り文字を {} にする
puts %q{He said, "Don't speak!"}
