### 配列がブロックに渡される場合 ###

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60]
]

areas = []
dimensions.each do |dimension|
  length = dimension[0]
  width = dimension[1]
  areas << length * width
end
p areas
#=> [200, 1200, 3000]

areas = []
# 引数の配列の要素をそれぞれ受け取る
dimensions.each do |length, width|
  areas << length * width
end
p areas
#=> [200, 1200, 3000]

# ブロック引数が多ければnilで埋められる
dimensions.each do |length, width, foo, bar|
  p [length, width, foo, bar]
end
#=> [10, 20, nil, nil]
#   [30, 40, nil, nil]
#   [50, 60, nil, nil]

dimensions = [
  [10, 20, 100],
  [30, 40, 200],
  [50, 60, 300]
]
# 引数の配列の要素が多ければ切り捨てられる
dimensions.each do |length, width|
  p [length, width]
end
#=> [10, 20]
#   [30, 40]
#   [50, 60]

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60]
]
# 引数の配列の要素とインデックスを同時に受け取る（()で括る）
dimensions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end
#=> length: 10, width: 20, i: 0
#   length: 30, width: 40, i: 1
#   length: 50, width: 60, i: 2
