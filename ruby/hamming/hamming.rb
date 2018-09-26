class Hamming
  class StrandLengthError < ArgumentError
    def initialize(msg='Strand lengths are not the same size.')
      super
    end
  end

  def self.compute(strand1, strand2)
    raise StrandLengthError unless strand1.length == strand2.length

    nucleotide_pairs = strand1.chars.zip(strand2.chars)
    nucleotide_pairs.count {|n1, n2| n1 != n2}
  end
end
