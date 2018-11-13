# Brackets class
class Brackets
  PAIRS = { '[' => ']', '{' => '}', '(' => ')' }.freeze

  def self.paired?(text)
    stack = []
    text.chars.each do |char|
      stack.push(char) if PAIRS.key?(char)
      return false if PAIRS.key(char) && PAIRS.key(char) != stack.pop
    end
    stack.empty?
  end
end
