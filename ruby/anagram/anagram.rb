# Anagram class
class Anagram
  def initialize(word)
    @word = word.downcase
    @sorted = @word.chars.sort.join
  end

  def match(candidates)
    candidates.map do |candidate|
      sorted_candidate = candidate.downcase.chars.sort.join
      candidate if @sorted == sorted_candidate && @word != candidate.downcase
    end.compact.sort
  end
end
