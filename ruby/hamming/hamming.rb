class Hamming
  def self.compute(a, b)
    if a.length != b.length
      raise ArgumentError
    end

    distance = 0
    0.upto(a.length - 1) do |i|
      if a[i] != b[i]
        distance += 1
      end
    end
    distance
  end
end
