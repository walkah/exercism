# PhoneNumber class
class PhoneNumber
  def self.clean(number)
    number = number.gsub(/\D/, '').sub(/^[01]/, '')
    return nil if number.length != 10 || %w[0 1].include?(number[3])

    number
  end
end
