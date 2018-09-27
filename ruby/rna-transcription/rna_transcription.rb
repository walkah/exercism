class Complement
  RNA_MAP = {G: 'C', C: 'G', T: 'A', A: 'U'}

  def self.of_dna(dna_strand)
    dna_strand.chars.map{|n| RNA_MAP[n.to_sym]}.join
  end
end
