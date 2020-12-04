numbers = [1, 2, 3, 4]

sum = 0
numbers.each { |n| sum += n }
p sum  #=> 10

# inject でリファクタリング
#   たたみ込み演算
sum = numbers.inject(0) { |result, n| result + n }
p sum  #=> 10
# ((((0 + 1) + 2) + 3) + 4) と同義

p ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'].inject('Sun') { |result, s| result + s }
#=> "SunMonTueWedThuFriSat"
