class CollatzConjecture
  def self.steps(n, count = 0)
    if n < 1
      raise ArgumentError
    elsif n == 1
      count
    else
      count += 1
      if n % 2 == 0
        number = n / 2
      else
        number = (3 * n) + 1
      end
      steps(number, count)
    end
  end
end
