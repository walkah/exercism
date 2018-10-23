# Pangram class
class Pangram
  def self.pangram?(sentence)
    sentence.downcase!
    ('a'..'z').each { |char| return false unless sentence.include?(char) }
    true
  end
end
