class NumberContainers
  def initialize()
    @numbers = {}
    @indices = Hash.new { |hash, key| hash[key] = [] }
  end

  #   :type index: Integer
  #   :type number: Integer
  #   :rtype: Void
  def change(index, number)
    return if @numbers[index] == number

    if (checked_num = @numbers[index])
      deleted_index = @indices[checked_num].bsearch_index { |checked_index| index <=> checked_index }
      @indices[checked_num].delete_at(deleted_index)
    end
    
    @numbers[index] = number
    added_index = @indices[number].bsearch_index { |checked_index| checked_index > index } || @indices[number].size
    @indices[number].insert(added_index, index)
  end

  #   :type number: Integer
  #   :rtype: Integer
  def find(number)
    @indices[number]&.first || -1
  end
end

# Your NumberContainers object will be instantiated and called as such:
# obj = NumberContainers.new()
# obj.change(index, number)
# param_2 = obj.find(number)
