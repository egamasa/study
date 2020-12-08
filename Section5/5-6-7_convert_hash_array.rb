### ハッシュ⇔配列の変換 ###

currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
p currencies.to_a
#=> [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]

array = [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]
p array.to_h
#=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}


# キーが重複する場合、最後の値のみが反映される
array = [[:japan, "yen"], [:japan, "円"]]
p array.to_h
#  => {:japan=>"円"}


# to_hメソッド（Ruby 2.1以降）を使わない 配列→ハッシュ変換
array = [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]
p Hash[array]
#  => {:japan=>"yen", :us=>"dollar", :india=>"rupee"}

array = [:japan, "yen", :us, "dollar", :india, "rupee"]
p Hash[*array]
#  => {:japan=>"yen", :us=>"dollar", :india=>"rupee"}
