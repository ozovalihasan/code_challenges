# Hasan Özovalı
# https://leetcode.com/ozovalihasan/

class LRUCache

=begin
  :type capacity: Integer
=end
  def initialize(capacity)
    @capacity = capacity
    @hash = {}
  end


=begin
  :type key: Integer
  :rtype: Integer
=end
  def get(key)
    if @hash[key]
      value = @hash.delete key
      @hash[key] = value
    else
      -1
    end
  end


=begin
  :type key: Integer
  :type value: Integer
  :rtype: Void
=end
  def put(key, value)
    if @hash[key]
      @hash.delete key
    elsif @hash.size == @capacity 
      @hash.shift
    end
    
    @hash[key] = value
  end


end

# Your LRUCache object will be instantiated and called as such:
# obj = LRUCache.new(capacity)
# param_1 = obj.get(key)
# obj.put(key, value)