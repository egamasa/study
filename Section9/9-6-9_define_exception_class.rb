# 独自の例外クラスを定義する

# 継承のみ
class NoCountryError < StandardError
end

# メソッドや属性の追加も可能
class NoCountryError < StandardError
  # 国名を属性として取得可能にする
  attr_reader :country

  def initialize(message, country)
    @country = country
    super("#{message}: #{country}")
  end
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise NoCountryError.new('無効な国名です', country)
  end
end


begin
  currency_of(:italy)
rescue NoCountryError => e
  puts e.message
  puts e.country
end
# => 無効な国名です: italy
# => italy

p currency_of(:japan)
# => "yen"

p currency_of(:italy)
# => `currency_of': 無効な国名です: italy (NoCountryError)
