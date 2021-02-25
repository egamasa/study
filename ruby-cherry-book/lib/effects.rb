module Effects
  def self.reverse
    ->(words) do
      words.split(/\s/).map(&:reverse).join(' ')
    end
  end

  def self.echo(rate)
    ->(words) do
      words.chars.map { |c| c =~ /\s/ ? c : c * rate }.join
    end
  end

  def self.loud(level)
    ->(words) do
      words
        .split(/\s/)
        .map { |word| word.upcase + '!' * level }
        .join(' ')
    end
  end

  # 追加
  def self.shuffle
    ->(words) do
      words.chars.shuffle.join
    end
  end
end
