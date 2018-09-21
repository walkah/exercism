class FlattenArray
  def self.flatten(array, result = [])
    array.each do |a|
      if a.is_a? Array
        flatten(a, result)
      else
        result << a unless a.nil?
      end
    end
    result
  end
end
