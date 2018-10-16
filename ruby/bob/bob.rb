# class Bob
class Bob
  def self.hey(remark)
    response = Response.new(remark)
    if silence?(remark)
      response.silence
    elsif shout?(remark)
      response.shouted_at
    elsif question?(remark)
      response.question
    else
      response.default
    end
  end

  def self.silence?(remark)
    remark.strip.empty?
  end

  def self.shout?(remark)
    remark.upcase == remark && remark =~ /[A-Za-z]+/
  end

  def self.question?(remark)
    remark.strip.end_with?('?')
  end
end

# Response
class Response
  def initialize(remark)
    @remark = remark.strip
  end

  def silence
    'Fine. Be that way!'
  end

  def shouted_at
    if @remark.end_with?('?')
      "Calm down, I know what I'm doing!"
    else
      'Whoa, chill out!'
    end
  end

  def question
    'Sure.'
  end

  def default
    'Whatever.'
  end
end
