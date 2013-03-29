class Hash

  # Recursively sorts the hash and all sub-hashes by key in ascending order.
  #
  def sort_by_key!
    sorted = Hash[self.sort].each_value do |value|
      if value.is_a? Hash
        value.sort_by_key!
      elsif value.is_a? Array
        # Find hashes to sort in the array.
        value.each do |v|
          v.sort_by_key! if v.is_a? Hash
        end
      end
    end
    self.replace sorted
  end

  # Recursively symbolizes the keys in the hash and all sub-hashes.
  #
  def symbolize_all_keys!
    self.keys.map do |key|
      if self[key].is_a? Hash
        self[key].symbolize_all_keys!
      elsif self[key].is_a? Array
        # Find hashes to sort in the array.
        self[key].each do |v|
          v.symbolize_all_keys! if v.is_a? Hash
        end
      end
      self[key.to_sym] = self.delete(key)
    end
    self
  end
end
