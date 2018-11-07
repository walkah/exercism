# High Scores class
class HighScores
  attr_accessor :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.last
  end

  def highest
    @scores.max
  end

  def top
    @scores.sort{ |a, b| b <=> a }[0, 3]
  end

  def report
    short_of = "#{highest - latest} short of " if highest != latest
    "Your latest score was #{latest}. That's #{short_of}your personal best!"
  end
end
