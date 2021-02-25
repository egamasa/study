### require ###

# requireなし
# p Date.today
#  => uninitialized constant Date (NameError)

require 'date'
p Date.today
#=> #<Date: 2020-12-03 ((2459187j,0s,0n),+0s,2299161j)>

# 相対パスで指定
# require_relative '../lib/hoge'
