# Series class
class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > @digits.length

    slices = []
    0.upto(@digits.length - slice_length) do |i|
      slices.push @digits.slice(i, slice_length)
    end
    slices
  end
end
