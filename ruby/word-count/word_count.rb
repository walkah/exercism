# Phrase class
class Phrase
  def initialize(phrase)
    @words = phrase.downcase.scan(/\w+(?:'\w)*/)
  end

  def word_count
    Hash[word_counts]
  end

  private

  def word_groups
    @words.group_by { |word| word }
  end

  def word_counts
    word_groups.map { |word, list| [word, list.size] }
  end
end
