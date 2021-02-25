require 'minitest/autorun'
require './lib/deep_freezable'
require './lib/bank'
require './lib/team'

class DeepFreezableTest < Minitest::Test

  # モジュールの呼び出し
  def test_deep_freeze
    assert DeepFreezable
  end

  # 配列のdeep_freeze
  def test_deep_freeze_to_array
    # 配列の値
    array = ['Japan', 'US', 'India']
    assert_equal(array, Team::COUNTRIES)

    # 配列自体のfreeze
    assert Team::COUNTRIES.frozen?

    # 配列の各要素のfreeze
    assert Team::COUNTRIES.all? { |country| country.frozen? }
  end

  # ハッシュのdeep_freeze
  def test_deep_freeze_to_hash
    # ハッシュの値
    hash = { 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' }
    assert_equal(hash, Bank::CURRENCIES)

    # ハッシュ自体のfreeze
    assert Bank::CURRENCIES.frozen?

    # ハッシュの各要素のfreeze
    assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
  end
end
