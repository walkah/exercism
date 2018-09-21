class PhoneNumber
  def self.clean(number)
    number.gsub!(/[^0-9]/, '')

    if number.length < 10 or number.length > 11
      nil
    elsif number.length == 11
      if number[0] == "1"
        number.slice(1, number.length)
      else
        nil
      end
    elsif ["0", "1"].include?(number[0]) or ["0", "1"].include?(number[3])
      nil
    else
      number
    end
  end
end
