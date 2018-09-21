class Acronym
  def self.abbreviate(long_name)
    abbrev = ""
    long_name.split(/[\W-]+/).each do |word|
      abbrev += word[0]
    end
    abbrev.upcase
  end
end
