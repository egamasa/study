### **でハッシュを展開 ###

h = { us: 'dollar', india: 'rupee' }

# ハッシュリテラル内でほかのハッシュを展開
p ({ japan: 'yen', **h })
#  => {:japan=>"yen", :us=>"dollar", :india=>"rupee"}

# mergeメソッドでも同じ挙動
p ({ japan: 'yen' }.merge(h))
#  => {:japan=>"yen", :us=>"dollar", :india=>"rupee"}
