# CollatzConjecture class
class CollatzConjecture
  def self.steps(num, count = 0)
    raise ArgumentError if num < 1
    return count if num == 1

    count += 1
    number = num.even? ? num / 2 : (3 * num) + 1
    steps(number, count)
  end
end
