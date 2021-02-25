### case文でRangeオブジェクトを使う ###

def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end

p charge(3)   #=> 0
p charge(12)  #=> 300
p charge(16)  #=> 600
p charge(25)  #=> 1000
