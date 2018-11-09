# Nucleotide class
class Nucleotide
  attr_accessor :histogram

  def initialize(strand)
    @strand = strand
    @histogram = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
    count_all
  end

  def self.from_dna(strand)
    raise ArgumentError if strand =~ /[^ATCG]/

    new(strand)
  end

  def count(nucleotide)
    @histogram[nucleotide]
  end

  private

  def count_all
    @histogram.each { |n, _| @histogram[n] = @strand.chars.count(n) }
  end
end
