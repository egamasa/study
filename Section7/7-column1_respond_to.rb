# respond_to? :メソッドの有無を調べる

s = 'Alice'

p s.respond_to?(:split)  #=> true
p s.respond_to?(:name)  #=> false


# メソッドの有無で条件分岐
def display_name(object)
  if object.respond_to?(:name)
    puts "Name is <<#{object.name}>>"
  else
    puts "No name."
  end
end

display_name(s)  #=> No name.
