# Class Element
class Element
  attr_accessor :datum, :next

  def initialize(datum)
    @datum = datum
    @next = nil
  end
end

# Class SimpleLinkedList
class SimpleLinkedList
  def initialize(stack = [])
    @tail = nil
    stack.each do |data|
      element = Element.new(data)
      push(element)
    end
  end

  def push(element)
    element.next = @tail
    @tail = element
    self
  end

  def pop
    popped = @tail
    return popped if @tail.nil?

    @tail = popped.next
    popped
  end

  def to_a
    arr = []
    while @tail
      element = pop
      arr.push(element.datum)
    end
    arr
  end

  def reverse!
    new_tail = nil
    while @tail
      element = pop
      element.next = new_tail
      new_tail = element
    end
    @tail = new_tail
    self
  end
end
