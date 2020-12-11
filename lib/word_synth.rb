class WordSynth
  def initialize
    @effects = []
  end

  def add_effect(effect)
    @effects << effect
  end

  def play(original_words)
    # inject :配列の要素数0なら引数をそのまま返す
    @effects.inject(original_words) do |words, effect|
      effect.call(words)
    end
  end
end
