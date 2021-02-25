# privateメソッドをサブクラスから呼び出す

class Product
  def to_s
    "name: #{name}"
  end

  private

  # privateメソッド"name"を定義
  def name
    'A great movie'
  end
end

class DVD < Product
  def to_s
    # Productクラスのnameメソッドを呼び出す
    "name: #{name}"
  end

  # Productクラスのnameメソッドをオーバーライド
  ## （スーパークラスのprivateメソッドもオーバーライド可能）
  def name
    'An awesome film'
  end
end


product = Product.new
p product.to_s
#=> "name: A great movie"

dvd = DVD.new
p dvd.to_s
#=> "name: A great movie"
