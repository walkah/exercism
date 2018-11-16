# Proverb class
class Proverb
  def initialize(*args, qualifier: nil)
    @inputs = args.to_a
    @qualifier = "#{qualifier} " if qualifier
  end

  def to_s
    lines.join("\n") + "And all for the want of a #{@qualifier}#{@inputs[0]}."
  end

  private

  def lines
    @inputs.map.with_index do |_, index|
      next if index == @inputs.length - 1

      "For want of a #{@inputs[index]} the #{@inputs[index + 1]} was lost."
    end
  end
end
