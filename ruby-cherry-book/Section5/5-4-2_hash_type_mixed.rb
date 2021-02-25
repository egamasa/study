### キーや値に異なるデータ型を混在させる ###

p hash = { 'abc' => 123, def: 456 }
#=> {"abc"=>123, :def=>456}

p hash['abc']  #=> 123
p hash[:def]  #=> 456

p hash[:abc]  #=> nil
p hash['def']  #=> nil


p person = {
  name: 'Alice',
  age: 20,
  friends: ['Bob', 'Carol'],
  phones: { home: '1234-0000', mobile: '5678-0000'}
}
#=> {:name=>"Alice", :age=>20, :friends=>["Bob", "Carol"], :phones=>{:home=>"1234-0000", :mobile=>"5678-0000"}}

p person[:age]  #=> 20
p person[:friends]  #=> ["Bob", "Carol"]
p person[:phones][:mobile]  #=> "5678-0000"
