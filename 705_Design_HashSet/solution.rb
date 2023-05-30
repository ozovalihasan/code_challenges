class MyHashSet
  def initialize()
    @hash = []
  end

=begin
  :type key: Integer
  :rtype: Void
=end
  def add(key)
    index = @hash.bsearch_index {|num| num >= key} || @hash.size
    return if @hash[index] == key
    
    @hash.insert index, key
  end

=begin
  :type key: Integer
  :rtype: Void
=end
  def remove(key)
    index = @hash.bsearch_index {|num| key <=> num}
    @hash.delete_at(index) if index
  end

=begin
  :type key: Integer
  :rtype: Boolean
=end
  def contains(key)
    @hash.bsearch_index {|num| key <=> num} != nil
  end
end

# Your MyHashSet object will be instantiated and called as such:
# obj = MyHashSet.new()
# obj.add(key)
# obj.remove(key)
# param_3 = obj.contains(key)