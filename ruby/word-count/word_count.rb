class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    counts = {}
    @phrase.scan(/\w+(?:'\w)*/).each do |word|
      word.downcase!
      counts[word] = counts[word].to_i + 1
    end
    counts
  end
end
