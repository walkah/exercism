class Hamming
  def self.compute(strand_one, strand_two)
    raise ArgumentError unless strand_one.length == strand_two.length

    0.upto(strand_one.length - 1).count {|i| strand_one[i] != strand_two[i] }
  end
end
