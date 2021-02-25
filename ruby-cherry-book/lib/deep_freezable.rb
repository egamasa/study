module DeepFreezable
  def deep_freeze(array_or_hash)
    # 全要素のfreeze
    case array_or_hash
    when Array
      array_or_hash.each do |element|
        element.freeze
      end
    when Hash
      array_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end

    # Array/Hash自体のfreeze
    array_or_hash.freeze
  end
end
