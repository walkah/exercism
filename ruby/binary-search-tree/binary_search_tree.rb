# class Bst
class Bst
  attr_reader :data, :left, :right

  def initialize(data)
    @data = data
  end

  def insert(data)
    data <= @data ? insert_left(data) : insert_right(data)
  end

  def each(&block)
    return enum_for(:each) unless block_given?

    @left.each(&block) if left
    yield data
    @right.each(&block) if right
  end

  private

  def insert_left(data)
    @left ? @left.insert(data) : @left = self.class.new(data)
  end

  def insert_right(data)
    @right ? @right.insert(data) : @right = self.class.new(data)
  end
end
