# Alphametics class
class Alphametics
  def self.solve(puzzle)
    chars = puzzle.chars & ('A'..'Z').to_a
    (0..9).to_a.permutation(chars.length).each do |numbers|
      equation = puzzle.tr(chars.join, numbers.join)
      next if equation =~ /\b0/
      return Hash[chars.zip(numbers)] if eval(equation)
    end
    {}
  end
end
