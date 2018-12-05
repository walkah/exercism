# Deque class
class Deque
  def initialize
    @front = nil
    @back = nil
  end

  def push(data)
    element = Element.new(data)
    element.prev = @back
    @back.next = element if @back
    @back = element
    @front = element if @front.nil?
  end

  def pop
    element = @back
    @back = element.prev
    @front = nil if @back.nil?
    element.data
  end

  def unshift(data)
    element = Element.new(data)
    element.next = @front
    @front.prev = element if @front
    @front = element
    @back = element if @back.nil?
  end

  def shift
    element = @front
    @front = element.next
    @back = nil if @front.nil?
    element.data
  end
end

# Element class
class Element
  attr_accessor :data, :next, :prev

  def initialize(data)
    @data = data
    @next = nil
    @prev = nil
  end
end
