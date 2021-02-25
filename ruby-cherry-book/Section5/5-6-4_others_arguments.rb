### **引数で任意のキーワードを受け付ける ###

def buy_burger(menu, drink: true, potato: true, **others)
  p menu
  p drink
  p potato
  p others
end

buy_burger('fish', drink: true, potato: false, salad: true, chicken: false)
#=> "fish"
#   true
#   false
#   {:salad=>true, :chicken=>false}
