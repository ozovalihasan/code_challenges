# @param {String} str
# @return {Integer}
def count_palindromic_subsequence(str)
  indices = {}
  str = str.chars.map(&:ord)
   
  str.each_with_index do |num, index|
    indices[num] ||= []
    indices[num] << index
  end
  
  indices.values.sum do |num_indices|
    next 0 if num_indices.first == num_indices.last
    
    str[num_indices.first + 1..num_indices.last - 1].uniq.count
  end
end
