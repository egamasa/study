# 文字列,数値,nil,bool値,正規表現...全てオブジェクト

p '1'.to_s
p 1.to_s
p nil.to_s
p true.to_s
p false.to_s
p /\d+/.to_s

# => "1"
# => "1"
# => ""
# => "true"
# => "false"
# => "(?-mix:\\d+)"
