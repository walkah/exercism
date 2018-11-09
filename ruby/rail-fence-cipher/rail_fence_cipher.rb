# RailFenceCipher class
class RailFenceCipher
  def self.encode(message, rails)
    rows = Array.new(rails, '')
    pattern(rails, message.length).each.with_index do |row, char|
      rows[row] += message[char]
    end
    rows.join
  end

  def self.decode(message, rails)
    chars = message.chars
    counts = get_counts(rails, message.length)
    rows = Array.new(rails) { |row| chars.shift(counts[row]) }
    pattern(rails, message.length).map { |i| rows[i].shift }.join
  end

  def self.pattern(rails, size)
    zigzag = 0.upto(rails - 1).to_a + (rails - 2).downto(1).to_a
    zigzag.cycle.take(size)
  end

  def self.get_counts(rails, size)
    Array.new(rails) { |row| pattern(rails, size).count { |i| i == row } }
  end
end
