class FlattenArray
  def self.flatten(array)
    recursive_flatten(array)
  end

  def self.recursive_flatten(array, result = [])
    array.each do |a|
      if a.is_a? Array
        recursive_flatten(a, result)
      else
        result << a unless a.nil?
      end
    end
    result
  end
end
