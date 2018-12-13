# Class CircularBuffer
class CircularBuffer
  class BufferEmptyException < RuntimeError
  end

  class BufferFullException < RuntimeError
  end

  def initialize(buffer_size)
    @buffer = Array.new(buffer_size)
  end

  def read
    raise BufferEmptyException if @front.nil?

    value = @buffer[@front]
    @buffer[@front] = nil
    if @front == @back
      @back = @front = nil
    else
      @front = next_index(@front)
    end
    value
  end

  def write(data, force = false)
    raise BufferFullException if @buffer[next_index(@back)] && !force

    @back = next_index(@back)
    @front = 0 if @front.nil?
    @buffer[@back] = data
  end

  def write!(data)
    @front = next_index(@front) if @buffer[next_index(@front)]
    write(data, true)
  end

  def clear
    @buffer = Array.new(@buffer.size)
    @front = @back = nil
  end

  private

  def next_index(index)
    return 0 if index.nil?

    (index + 1) % @buffer.size
  end
end
