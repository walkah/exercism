# Anagram class
class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(candidates)
    candidates.select do |candidate|
      sorted(@word) == sorted(candidate) && @word != candidate.downcase
    end
  end

  private

  def sorted(word)
    word.downcase.chars.sort.join
  end
end
