class Bob
  def self.hey(remark)
    remark.gsub!(/[[:space:]]+/, '')
    if remark == ''
      'Fine. Be that way!'
    elsif remark.upcase == remark and remark =~ /[A-Za-z]+/
      if remark[-1] == '?'
        "Calm down, I know what I'm doing!"
      else
        'Whoa, chill out!'
      end
    elsif remark[-1] == '?'
      'Sure.'
    else
      'Whatever.'
    end
  end
end
