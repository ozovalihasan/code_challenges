# @param {Integer[]} nums
# @return {Integer}
def find_max_length(nums)
  total = 0
  indices = { 0 => -1 }

  nums.map.with_index do |num, index| 
    total += num.zero? ? -1 : 1
    
    indices[total] ||= index
    index - indices[total] 
  end.max
end
