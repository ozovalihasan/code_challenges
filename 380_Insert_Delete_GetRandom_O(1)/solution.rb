class RandomizedSet
  attr_reader :current_arr
  
  def initialize()
    @current_arr = {}
  end


=begin
  :type val: Integer
  :rtype: Boolean
=end
  def insert(val)
    return false if @current_arr[val]
    @current_arr[val] = true
  end


=begin
  :type val: Integer
  :rtype: Boolean
=end
  def remove(val)
    return false unless @current_arr[val]
    @current_arr.delete(val)
    true
  end


=begin
  :rtype: Integer
=end
  def get_random()
    @current_arr.keys.sample
  end


end

# Your RandomizedSet object will be instantiated and called as such:
# obj = RandomizedSet.new()
# param_1 = obj.insert(val)
# param_2 = obj.remove(val)
# param_3 = obj.get_random()